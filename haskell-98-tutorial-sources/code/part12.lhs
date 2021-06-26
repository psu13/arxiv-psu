Gentle Introduction to Haskell 98, Online Supplement 
Part 12
Covers Section 5

> module Part12() where

> import Prelude hiding (elem)

Section: 5  Type Classes

Names in the basic class structure of Haskell cannot be hidden (they are
in PreludeCore) so we have to modify the names used in the tutorial.

Here is a new Eq class:

> class Eq' a where
>   eq :: a -> a -> Bool

Now we can define elem using eq from above:

> elem :: (Eq' a) => a -> [a] -> Bool
> x `elem` [] = False
> x `elem` (y:ys) = x `eq` y || x `elem` ys

Before this is of any use, we need to admit some types to Eq'

> instance Eq' Int where
>  x `eq` y = abs (x-y) < 3  -- Let's make this `nearly equal' just for fun

> instance Eq' Float where
>  x `eq` y = abs (x-y) < 0.1

> list1 :: [Int]
> list1 = [1,5,9,23]

> list2 :: [Float]
> list2 = [0.2,5.6,33,12.34]

> e1 = 2 `elem` list1
> e2 = 100 `elem` list1
> e3 = 0.22 `elem` list2

Watch out!  Integers in Haskell are overloaded - without a type signature
to designate an integer as an Int, expressions like 3 `eq` 3 will be
ambiguous.  

Now to add the tree type:

> data Tree a = Leaf a | Branch (Tree a) (Tree a)   deriving Show

> instance (Eq' a) => Eq' (Tree a) where
>   (Leaf a)       `eq` (Leaf b)       = a `eq` b
>   (Branch l1 r1) `eq` (Branch l2 r2) =  (l1 `eq` l2) && (r1 `eq` r2)
>   _              `eq` _              = False

> tree1,tree2 :: Tree Int
> tree1 = Branch (Leaf 1) (Leaf 2)
> tree2 = Branch (Leaf 2) (Leaf 1)

> e4 = tree1 `eq` tree2

Now make a new class with Eq' as a super class:

> class (Eq' a) => Ord' a where
>  lt,le :: a -> a -> Bool          -- lt and le are operators in Ord'
>  x `le` y = x `eq` y || x `lt` y  -- This is a default for le

The typing of lt & le is 

 le,lt :: (Ord' a) => a -> a -> Bool

This is identical to

 le,lt :: (Eq' a,Ord' a) => a -> a -> Bool

Make Int an instance of Ord':

> instance Ord' Int where
>  x `lt` y = x < y+1

> i :: Int  -- Avoid ambiguity
> i = 3
> e5 :: Bool
> e5 = i `lt` i

Some constraints on instance declarations:
  A program can never have more than one instance declaration for
    a given combination of data type and class.
  If a type is declared to be a member of a class, it must also be
    declared in all superclasses of that class.
  An instance declaration does not need to supply a method for every
    operator in the class.  When a method is not supplied in an
    instance declaration and no default is present in the class
    declaration, a runtime error occurs if the method is invoked.
  You must supply the correct context for an instance declaration --
    this context is not inferred automatically.

This definition of Functor is in the Prelude:

class Functor f where
  fmap :: (a -> b) -> f a -> f b  -- a generalized map function

This makes Tree an instance of Functor.

> instance Functor Tree where
>    fmap f (Leaf x)       = Leaf   (f x)
>    fmap f (Branch t1 t2) = Branch (fmap f t1) (fmap f t2)

> e6 = fmap (+1) tree1

We can also make 2-tuples an instance of Functor:

> instance Functor ((,) a) where
>   fmap f (x,y) = (x,f y)

> e7 = fmap (+1) (1,2)

Note that these are a kind errors:

> -- instance Functor (,)

> -- instance Functor Bool

The error message from Hugs isn't very useful but if you use :set +k then
you will see a better message.

Continued in part13.lhs

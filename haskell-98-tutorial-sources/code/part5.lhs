Gentle Introduction to Haskell 98, Online Supplement 
Part 5
Covers Sections 2.4, 2.5, 2.6

Section: 2.4  Type Synonyms

> module Part5() where

Since type synonyms are part of the type language only, it's hard to
write a program which shows what they do.  Essentially, they are like
macros for the type language.  They can be used interchangeably with their
definition:

> e1 :: String
> e1 = "abc"
> e2 :: [Char]   -- No different than String
> e2 = e1

In the written tutorial the declaration of `Addr' is a data type
declaration, not a synonym declaration.  This shows that the data
type declaration as well as a signature can reference a synonym.

Section: 2.5  Built-in Types

Tuples are an easy way of grouping a set of data values.  Here are
a few tuples.  Note the consistancy in notation between the values and
types.

> e3 :: (Bool,Int)
> e3 = (True,4)
> e4 :: (Char,[Int],Char)
> e4 = ('a',[1,2,3],'b')

Here's a function which returns the second component of a 3 tuple.

> second :: (a,b,c) -> b
> second (a,b,c) = b

Try out `second e3' and `second e4' - what happens?

Each different size of tuple is a completely distinct type.  There is
no general way to append two arbitrary tuples or randomly select the
i'th component of an arbitrary tuple.  Here's a function built using
2-tuples to represent intervals.

Use a type synonym to represent homogeneous 2 tuples

> type Interval a = (a,a)

> containsInterval :: Interval Int -> Interval Int -> Bool
> containsInterval (xmin,xmax) (ymin,ymax) = xmin <= ymin && xmax >= ymax

> p1 :: Interval Int
> p1 = (2,3)
> p2 :: Interval Int
> p2 = (1,4)

> e5 = containsInterval p1 p2
> e6 = containsInterval p2 p1

Here's a type declaration for a type isomorphic to lists:

> data List a = Nil | Cons a (List a) deriving Show

Except for the notation, this is completely equivalent to ordinary lists
in Haskell.

> length' :: List a -> Int
> length' Nil = 0
> length' (Cons x y) = 1 + length' y

> e7 = length' (Cons 'a' (Cons 'b' (Cons 'c' Nil)))

It is hard to demonstrate much about the `non-specialness' of built-in
types.  However, here is a brief summary:

Numbers and characters, such as 1, 2.2, or 'a', are the same as nullary
type constructors.

Lists have a special type constructor, [a] instead of List a, and
an odd looking data constructor, [].  The other data constructor, :, is
not `unusual', syntactically speaking.  The notation [x,y] is just
syntax for x:y:[] and "abc" for 'a' : 'b' : 'c' : [].

Tuples use a special syntax.  In a type expression, a 2 tuple containing
types a and be would be written (a,b) instead of using a prefix type
constructor such as Tuple2 a b.  This same notation is used to build
tuple values: (1,2) would construct a 2 tuple containing the values 1 and 2.


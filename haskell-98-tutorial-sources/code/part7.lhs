Gentle Introduction to Haskell 98, Online Supplement 
Part 7
Covers Sections 3, 3.1

> module Part7() where
> import Prelude hiding (map)

Section: 3   Functions

> add :: Int -> Int -> Int
> add x y = x+y

> e1 :: Int
> e1 = add 1 2

This Int -> Int is the latter part of the signature of add:

add :: Int -> (Int -> Int)

> inc :: Int -> Int
> inc = add 1

> e2 :: Int
> e2 = inc 3

> map :: (a->b) -> [a] -> [b]
> map f [] = []
> map f (x:xs) = f x : (map f xs)

> e3 :: [Int]
> e3 = map (add 1) [1,2,3]

This next definition is the equivalent to e3

> e4 :: [Int]
> e4 = map inc [1,2,3]

Heres a more complex example.  Define flist to be a list of functions:

> flist :: [Int -> Int]
> flist = map add [1,2,3]

This returns a list of functions which add 1, 2, or 3 to their input.
Haskell should print flist as something like
 [<<function>>,<<function>>,<<function>>]

Now, define a function which takes a function and returns its value
when applied to the constant 1:

> applyTo1 :: (Int -> a) -> a
> applyTo1 f = f 1

> e5 :: [Int]
> e5 = map applyTo1 flist  -- Apply each function in flist to 1

If you want to look at how the type inference works, figure out how
the signatures of map, applyTo1, and flist combine to yield [Int].

Section: 3.1  Lambda Abstractions

The symbol \ is like `lambda' in lisp or scheme.

Anonymous functions are written as \ arg1 arg2 ... argn -> body
Instead of naming every function, you can code it inline with this
notation:

> e6 = map (\f -> f 1) flist

Be careful with the syntax here.  \x->\y->x+y parses as
 \ x ->\ y -> x + y.  The ->\ is all one token.  Use spaces!!

This is identical to e5 except that the applyTo1 function has no name.

Function arguments on the left of an = are the same as lambda on the
right:

> add' = \x y -> x+y    -- identical to add
> inc' = \x -> x+1     -- identical to inc

As with ordinary function, the parameters to anonymous functions
can be patterns:

> e7 :: [Int]
> e7 = map (\(x,y) -> x+y) [(1,2),(3,4),(5,6)]

Functions defined by more than one equation, like map, cannot
be converted to anonymous lambda functions quite as easily - a case
statement is also required.  This is discussed later.

Continued in part8.lhs

Gentle Introduction to Haskell 98, Online Supplement 
Part 2
Covers Section 2.1

Section: 2.1   Polymorphic Types

> module Part2() where

The following line allows us to redefine functions in the standard
prelude.  Ignore this for now.

> import Prelude hiding (length,head,tail,null)

Start with some sample lists to use in test cases:

> list1 :: [Int]
> list1 = [1,2,3]
> list2 :: [Char]         -- This is the really a String
> list2 = ['a','b','c']   -- This is the same as "abc"; evaluate list2 and see.
> list3 :: [[a]]          -- The element type of the inner list is unknown
> list3 = [[],[],[],[]]   -- so this list can't be printed
> list4 :: [Int]
> list4 = 1:2:3:4:[]      -- Exactly the same as [1,2,3,4]; print it and see.

This is the length function.  You can test it by evaluating expressions
such as `length list1'.  Function application is written by
simple juxtaposition: `f(x)' in other languages would be `f x' in Haskell.

> length :: [a] -> Int
> length [] = 0
> length (x:xs) = 1 + length xs

Function application has the highest precedence, so 1 + length xs is
parsed as 1 + (length xs).  In general, you have to surround
non-atomic arguments to a function with parens.  This includes
arguments which are also function applications.  For example,
f g x is the function f applied to arguments g and x, similar to
f(g,x) in other languages.  However, f (g x) is f applied to (g x), or
f(g(x)), which means something quite different!  Be especially
careful with infix operators: f x+1 y-2 would be parsed as (f x)+(1 y)-2.
This is also true on the left of the `=': the parens around (x:xs) are
absolutely necessary.  length x:xs would be parsed as (length x):xs.

Also be careful with prefix negation, -.  The application `f -1' is
f-1, not f(-1).  Add parens around negative numbers to avoid this
problem.

Here are some other list functions:

> head :: [a] -> a -- returns the first element in a list (same as car in lisp)
> head (x:xs) = x

> tail :: [a] -> [a] -- removes the first element from a list (same as cdr)
> tail (x:xs) = xs

> null :: [a] -> Bool
> null [] = True
> null (x:xs) = False

> cons :: a -> [a] -> [a]
> cons x xs = x:xs

> nil :: [a]
> nil = []

Length could be defined using these functions.  This is not good
Haskell style but does illustrate these other list functions.
Haskell programmers feel that the pattern matching style, as used in
the previous version of length, is more natural and readable.

> length' :: [a] -> Int   -- Note that ' can be part of a name
> length' x = if null x then 0 else 1 + length' (tail x)

A test case for length', cons, and nil

> e1 = length' (cons 1 (cons 2 nil))

We haven't said anything about errors yet.  Each of the following
examples illustrates a potential runtime or compile time error.  The
compile time error is commented out so that other examples will compile;
you can uncomment e2 and see what happens.

> -- e2 = cons True False   -- Why is this not possible in Haskell?
> e3 = tail (tail ['a'])  -- What happens if you evaluate this?
> e4 = []       -- This is especially mysterious!

This last example, e4, is something hard to explain but is often
encountered early by novices.  We haven't explained yet how the system
prints out the expressions you type in - this will wait until later.
However, the problem here is that e4 has the type [a].  The printer for
the list datatype is complaining that it needs to know a specific type
for the list elements even though the list has no elements!  This can
be avoided by giving e4 a type such as [Int].  (To further confuse you,
try giving e4 the type [Char] and see what happens.)

Continued in part3.lhs

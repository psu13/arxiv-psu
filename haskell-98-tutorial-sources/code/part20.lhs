Gentle Introduction to Haskell 98, Online Supplement 
Part 20
Covers Section 10.4

> module Part20() where

> import Complex

Section: 10.4  Default Numeric Types

Ambiguous contexts arise frequently in numeric expressions.  When an
expression which produces a value with a general type, such as
`1' (same as `fromInteger 1'; the type is (Num a) => a), with
another expression which `consumes' the type, such as `show' or
`toInteger', ambiguity arises.  This ambiguity can be resolved
using expression type signatures, but this gets tedious fast!  
Assigning a type to the top level of an ambiguous expression does
not help: the ambiguity does not propagate to the top level.

> e1 :: String -- This type does not influence the type of the argument to show
> e1 = show 1  -- Does this mean to show an Int or a Float or ...
> e2 :: String
> e2 = show (1 :: Float)
> e3 :: String
> e3 = show (1 :: Complex Float)

The reason the first example works is that ambiguous numeric types are
resolved using defaults.  The defaults in effect here are Int and
Double.  Since Int `fits' in the expression for e1, Int is used.
When Int is not valid (due to other context constraints), Double
will be tried.

This function defaults the type of the 2's to be Int

> rms :: (Floating a) => a -> a -> a
> rms x y = sqrt ((x^2 + y^2) * 0.5)

One of the reasons for adding type signatures throughout these examples
is to avoid unexpected defaulting.  Many of the top level signatures are
required to avoid ambiguity.

Notice that defaulting applies only to numeric classes.  The

> --  show (read "xyz")                       -- Try this if you want!

example uses only class Show so no defaulting occurs.

Ambiguity also arises with polymorphic types.  As discussed previously,
expressions like [] have a similar problem.

> e4 = []   -- Won't print since [] has type [a] and `a' is not known.

Note the difference: even though the lists have no components, the type
of component makes a difference in printing.

> e5 = ([] :: [Int]) 
> e6 = ([] :: [Char])



Continued in part21.lhs

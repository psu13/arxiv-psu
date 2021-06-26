Gentle Introduction to Haskell 98, Online Supplement 
Part 3
Covers Section 2.1


Section: 2.2  User-Defined Types

> module Part3() where

The type Bool is already defined in the Prelude so there is no
need to define it here.

> data Color = Red | Green | Blue | Indigo | Violet deriving Show

The `deriving Show' is necessary if you want to print a Color value.

You can now evaluate these expressions.

> e1 :: Color
> e1 = Red
> e2 :: [Color]
> e2 = [Red,Blue]

It is very important to keep the expression language and the type
language in Haskell separated.  The data declaration above defines
the type constructor Color.  This is a nullary constructor: it takes no
arguments.  Color is found ONLY in the type language - it can not be
part of an expression.  e1 = Color is meaningless.  (Actually, Color could
be both a data constructor and a type constructor but we'll ignore this
possibility for now).  On the other hand, Red, Blue, and so on are
(nullary) data constructors.  They can appear in expressions and
in patterns (described later).  The declaration e1 :: Blue would also
be meaningless.  Data constructors can be defined ONLY in a data
declaration.

In the next example, Point is a type constructor and Pt is a data
constructor.  Point takes one argument and Pt takes two.  A data constructor
like Pt is really just an ordinary function except that it can be used in
a pattern.  Type signatures can not be supplied directly for data
constructors; their typing is completely defined by the data declaration.
However, data constructors have a signature just like any variable:
Pt :: a -> a -> Point a   -- Not valid Haskell syntax
That is, Pt is a function which takes two arguments with the same
arbitrary type and returns a value containing the two argument values.

> data Point a = Pt a a   deriving Show

> e3 :: Point Float
> e3 = Pt 2.0 3.0
> e4 :: Point Char
> e4 = Pt 'a' 'b'
> e5 :: Point (Point Int)
> e5 = Pt (Pt 1 2) (Pt 3 4)
> -- e6 = Pt 'a' True         -- This is a typing error

The individual components of a point do not have names.
Let's jump ahead a little so that we can write functions using these
data types.  Data constructors (Red, Blue, ..., and Pt) can be used in
patterns.  When more than one equation is used to define a function,
pattern matching occurs top down.

A function to remove red from a list of colors.

> removeRed :: [Color] -> [Color]
> removeRed [] = []
> removeRed (Red:cs) = removeRed cs
> removeRed (c:cs) = c : removeRed cs  -- c cannot be Red at this point

> e7 :: [Color]
> e7 = removeRed [Blue,Red,Green,Red]

Pattern matching is capable of testing equality with a specific color.

All equations defining a function must share a common type.  A
definition such as:

foo Red = 1
foo (Pt x y) = x

would result in a type error since the argument to foo cannot be both a
Color and a Point.  Similarly, the right hand sides must also share a
common type; a definition such as

foo Red = Blue
foo Blue = Pt Red Red

would also result in a type error.

Here are a couple of functions defined on points.

> dist :: Point Float -> Point Float -> Float
> dist (Pt x1 y1) (Pt x2 y2) = sqrt ((x1-x2)^2 + (y1-y2)^2)

> midpoint :: Point Float -> Point Float -> Point Float
> midpoint (Pt x1 y1) (Pt x2 y2) = Pt ((x1+x2)/2) ((y1+y2)/2)

> p1 :: Point Float
> p1 = Pt 1.0 1.0
> p2 :: Point Float
> p2 = Pt 2.0 2.0

> e8 :: Float
> e8 = dist p1 p2
> e9 :: Point Float
> e9 = midpoint p1 p2

The only way to take apart a point is to pattern match.
That is, the two values which constitute a point must be extracted
by matching a pattern containing the Pt data constructor.  Much
more will be said about pattern matching later.

Haskell prints values in the same syntax used in expressions.  Thus
Pt 1 2 would print as Pt 1 2 (of course, Pt 1 (1+1) would also print
as Pt 1 2).

Continued in part4.lhs

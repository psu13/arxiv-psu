Gentle Introduction to Haskell 98, Online Supplement 
Part 8
Covers Sections 3.2, 3.2.1, 3.2.2

> module Part8() where

> import Prelude hiding ((++),(.))

Section: 3.2  Infix operators

Haskell has both identifiers, like `x', and operators, like `+'.
These are just two different types of syntax for variables.
However, operators are by default used in infix notation.

Briefly, identifiers begin with a letter and may have numbers, _, and '
in them:  x, xyz123, x'', xYz'_12a.  The case of the first letter
distinguishes variables from data constructors (or type variables from
type constructors).  An operator is a string of symbols, where
:!#$%&*+./<=>?@\^| are all symbols.  If the first character is : then
the operator is a data constructor; otherwise it is an ordinary
variable operator.  The - and ~ characters may start a symbol but cannot
be used after the first character.  This allows a*-b to parse as
a * - b instead of a *- b.

Operators can be converted to identifiers by enclosing them in parens.
This is required in signature declarations.  Operators can be defined
as well as used in the infix style:

> (++) :: [a] -> [a] -> [a]
> [] ++ y = y
> (x:xs) ++ y = x : (xs ++ y)

Table 2 (Page 54) of the report is invaluable for sorting out the
precedences of the many predefined infix operators.

> e1 = "Foo" ++ "Bar"

This is the same function without operator syntax

> appendList :: [a] -> [a] -> [a]
> appendList [] y = y
> appendList (x:xs) y = x : appendList xs y

> (.) :: (b -> c) -> (a -> b) -> (a -> c)
> f . g = \x -> f (g x)

> add1 :: Int -> Int
> add1 x = x+1

> e2 = (add1 . add1) 3

Section: 3.2.1  Sections

Sections are a way of creating unary functions from infix binary
functions.  When a parenthesized expression starts or ends in an
operator, it is a section.  Another definition of add1:

> add1' :: Int -> Int
> add1' = (+ 1)

> e3 = add1' 4

Here are a few section examples:

> e4 = map (++ "abc") ["x","y","z"]

> e5 = map ("abc" ++) ["x","y","z"]


Section: 3.2.2  Fixity Declarations

We'll avoid any demonstration of fixity declarations.  The Prelude
contains numerous examples.

Continued in part9.lhs

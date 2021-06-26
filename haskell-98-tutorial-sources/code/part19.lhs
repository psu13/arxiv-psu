Gentle Introduction to Haskell 98, Online Supplement 
Part 19
Covers Sections 10.1, 10.2, 10.3 

> module Part19() where

> import Complex

Section: 10  Numbers
Section: 10.1  Numeric Class Structure
Section: 10.2  Constructed Numbers

Here's a brief summary of Haskell numeric classes.

Class Num
  Most general numeric class.  Has addition, subtraction, multiplication.
  Integers can be coerced to any instance of Num with fromInteger.
  All integer constants are in this class.
Instances: Int, Integer, Float, Double, Ratio a, Complex a

Class Real
  This class contains ordered numbers which can be converted to
  rationals.
Instances: Int, Integer, Float, Double, Ratio a

Class Integral
  This class deals with integer division.  All values in Integral can
  be mapped onto Integer.
Instances: Int, Integer

Class Fractional
  These are numbers which can be divided.  Any rational number can
  be converted to a fractional.  Floating point constants are in
  this class: 1.2 would be 12/10.
Instances: Float, Double, Ratio a

Class Floating
  This class contains all the standard floating point functions such
  as sqrt and sin.
Instances: Float, Double, Complex a

Class RealFrac
  These values can be rounded to integers and approximated by rationals.
Instances: Float, Double, Ratio a

Class RealFloat
  These are floating point numbers constructed from a fixed precision
  mantissa and exponent.
Instances: Float, Double

There are only a few sensible combinations of the constructed numerics
with built-in types:
 Ratio Integer (same as Rational): arbitrary precision rationals
 Ratio Int: limited precision rationals
 Complex Float: complex numbers with standard precision components
 Complex Double: complex numbers with double precision components


The following function works for arbitrary numerics:

> fact :: (Num a) => a -> a
> fact 0 = 1
> fact n = n*(fact (n-1))

Note the behavior when applied to different types of numbers:

> e1 :: Int
> e1 = fact 6
> e2 :: Int
> e2 = fact 20   -- Hugs may not handle overflow gracefully!
> e3 :: Integer
> e3 = fact 20
> e4 :: Rational
> e4 = fact 6
> e5 :: Float
> e5 = fact 6
> e6 :: Complex Float
> e6 = fact 6

Be careful: values like `fact 1.5' will loop.

As a practical matter, Int operations are usually faster than Integer
operations.  Also, overloaded functions can be much slower than non-
overloaded functions.  Giving a function like fact a precise typing:

fact :: Int -> Int

may yield much faster code.

In general, numeric expressions work as expected.  Literals are
a little tricky - they are coerced to the appropriate value.  A
constant like 1 can be used as ANY numeric type.

> e7 :: Float
> e7 = sqrt 2
> e8 :: Rational
> e8 = ((4%5) * (1%2)) / (3%4)
> e9 :: Rational
> e9 = 2.2 * (3%11) - 1
> e10 :: Complex Float
> e10 = (2 * (3:+3)) / ((1.1:+2.0) - 1)
> e11 :: Complex Float
> e11 = sqrt (-1)
> e12 :: Integer
> e12 = numerator (4%2)
> e13 :: Complex Float
> e13 = conjugate (4:+5.2)

A function using pattern matching on complex numbers:

> mag :: (RealFloat a) => Complex a -> a
> mag (a:+b) = sqrt (a^2 + b^2)

> e14 :: Float
> e14 = mag (1:+1)

Section: 10.3  Numeric Coercions and Overloaded Literals

The Haskell type system does NOT implicitly coerce values between
the different numeric types!  Although overloaded constants are 
coerced when the overloading is resolved, no implicit coercion goes
on when values of different types are mixed.  For example:

> f :: Float
> f = 1.1
> i1 :: Int
> i1 = 1
> i2 :: Integer
> i2 = 2

All of these expressions would result in a type error (try them!):

> -- g = i1 + f
> -- h = i1 + i2
> -- i3 :: Int
> -- i3 = i2

Appropriate coercions must be introduced by the user to allow
the mixing of types in arithmetic expressions.

> e15 :: Float
> e15 = f + fromIntegral i1
> e16 :: Integer
> e16 = fromIntegral i1 + i2
> e17 :: Int
> e17 = i1 + fromInteger i2  -- fromIntegral would have worked too.

Continued in part20.lhs

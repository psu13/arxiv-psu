Gentle Introduction to Haskell 98, Online Supplement 
Part 24
Covers Sections 12, 12.1, 12.2, 12.3

Section: 12  Typing Pitfalls

Section: 12.1  Let-Bound Polymorphism

> module Part24() where

> -- f g = (g 'a',g [])    -- This won't typecheck.

Section: 12.2  Overloaded Numerals

Overloaded numerics were covered previously - here is one more example.
sum is a prelude function which sums the elements of a list.

> average :: (Fractional a) => [a] -> a
> average xs   = sum xs / fromIntegral (length xs)

> e1 :: Float   -- Note that e1 would default to Double instead of Integer - 
>               -- this is due to the Fractional context.
> e1 = average [1,2,3]

Section: 12.3  The Monomorphism Restriction

The monomorphism restriction is usually encountered when functions
are defined without parameters.  If you remove the signature for sum'
the monomorphism restriction will apply.  Hugs (at present) incorrectly
defaults the type of sum' to Integer -> Integer without the type
signature.  If either of sumInt or sumFloat are present, these would
determine the overloading.  If both are present and sum' has no signature
there is an error. 

> sum' :: (Num a) => [a] -> a
> sum' = foldl (+) 0         -- foldl reduces a list with a binary function
>                            -- 0 is the initial value.

> sumInt :: Int
> sumInt = sum' [1,2,3]

> sumFloat :: Float
> sumFloat = sum' [1,2,3]

If you use overloaded constants you also may encounter monomorphism:

> x :: Num a => a
> x = 1    -- The type of x is Num a => a
> y :: Int
> y = x            -- Uses x as an Int
> z :: Integer
> z = x          -- Uses x as an Integer.  A monomorphism will occur of the
>                -- signature for x is removed.

Continued in part25.lhs



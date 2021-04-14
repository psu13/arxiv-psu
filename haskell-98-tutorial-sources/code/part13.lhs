Gentle Introduction to Haskell 98, Online Supplement 
Part 13
Covers Section 6.1, 6.2, 6.3

> module Part13() where

Section 6.1

Example from the tutorial.  Note that newtype supports deriving in the same
manner as data.  We also need to derive a Eq instance for Natural since
the definition of Num has Eq as a superclass.

The Num instance of Natural allows the use of integer constants such
as 1 as Naturals.  

> newtype Natural = MakeNatural Integer deriving (Show, Eq)

> toNatural :: Integer -> Natural
> toNatural x | x < 0     = error "Can't create negative naturals!" 
>             | otherwise = MakeNatural x

> fromNatural :: Natural -> Integer
> fromNatural (MakeNatural i) = i


> instance Num Natural where
>     fromInteger = toNatural
>     x + y = toNatural (fromNatural x + fromNatural y)
>     x - y = let r = fromNatural x - fromNatural y in
>               if r < 0 then error "Unnatural subtraction"
>                         else toNatural r
>     x * y = toNatural (fromNatural x * fromNatural y)

> e1 :: Natural
> e1 = toNatural 1
> e2 :: Natural
> e2 = 1
> e3 :: Natural
> e3 = 1 + 1
> e4 :: Natural
> e4 = (3 - 4) + 3

Section 6.2

> data Point = Pt {pointx, pointy :: Float} deriving Show

> absPoint :: Point -> Float
> absPoint p = sqrt (pointx p * pointx p + pointy p * pointy p)

> e5 :: Point
> e5 = Pt {pointx = 1, pointy = 2}
> e6 :: Float
> e6 = absPoint e5
> e7 :: Float
> e7 = pointx e5
> e8 :: Point
> e8 = e5 {pointx = 4}

> data T = C1 {f :: Int, g :: Float}
>        | C2 {f :: Int, h :: Bool} deriving Show

> e9 :: T
> e9 = C1 {f = 1, g = 2}
> e10 :: T
> e10 = C2 {f = 3, h = False}
> e11 :: Int
> e11 = f e9  
> e12 :: Int
> e12 = f e10
> e13 :: Float
> e13 = g e10

Section 6.3

Here is a definition of head-strict lists: the head of each list is
evaluated when the list is constructed.

> data HList a = Cons !a (HList a) | Nil deriving Show

> hd (Cons x y) = x
> tl (Cons x y) = y

If the "!" is removed then e17 no longer is an error.

> e14 :: HList Bool 
> e14 = True `Cons` (error "e14" `Cons` Nil)
> e15, e16 :: Bool
> e15 = hd e14
> e16 = hd (tl e14)
> e17 :: HList Bool
> e17 = tl (tl (e14))

Continued in part14.lhs

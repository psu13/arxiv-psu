Gentle Introduction to Haskell 98, Online Supplement 
Part 10
Covers Sections 4, 4.1, 4.2

> module Part10() where

> import Prelude hiding (take,(^))

Section: 4  Case Expressions and Pattern Matching

Now for details of pattern matching.  We use [Int] instead of [a]
since the only value of type [a] is [].

> contrived :: ([Int], Char, (Int, Float), String, Bool) -> Bool
> contrived ([], 'b', (1, 2.0), "hi", True) = False
> contrived x = True   -- add a second equation to avoid runtime errors

> e1 :: Bool
> e1 = contrived ([], 'b', (1, 2.0), "hi", True)
> e2 :: Bool
> e2 = contrived ([1], 'b', (1, 2.0), "hi", True)

Contrived just tests its input against a big constant.

Linearity in pattern matching implies that patterns can only compare
values with constants.  The following is not valid Haskell:

member x [] = False
member x (x:ys) = True      -- Invalid since x appears twice
member x (y:ys) = member x ys

> f :: [a] -> [a]
> f s@(x:xs) = x:s
> f _ = []

> e3 = f "abc"

Another use of _:

> middle :: (a,b,c) -> b
> middle (_,x,_) = x

> e4 :: Char
> e4 = middle (True, 'a', "123")

> (^) :: Int -> Int -> Int
> x ^ 0 = 1
> x ^ (n+1) = x*(x^n)

> e5 :: Int
> e5 = 3^3
> e6 :: Int
> e6 = 4^(-2)  -- Notice the behavior of the + pattern on this one

Section: 4.1  Pattern Matching Semantics

Here's an extended example to illustrate the left -> right, top -> bottom
semantics of pattern matching.

> foo :: (Int,[Int],Int) -> Int
> foo (1,[2],3)   = 1
> foo (2,(3:_),3) = 2
> foo (1,_,3)     = 3
> foo _           = 4

> e7 = foo (1,[],3)
> e8 = foo (1,error "in e8",3)
> e9 = foo (1,1:(error "in e9"),3)
> e10 = foo (2,error "in e10",2)
> e11 = foo (3,error "in e11 (second)",error "in e11 (third)")

Now add some guards:

> sign :: Int -> Int
> sign x | x > 0  = 1
>        | x == 0 = 0
>        | x < 0  = -1

> e12 = sign 3

The last guard is often `True' to catch all other cases.  The identifier
`otherwise' is defined as True for use in guards:

> max' :: Int -> Int -> Int
> max' x y | x > y      = x
>          | otherwise  = y

Guards can refer to any variables bound by pattern matching.  When
no guard is true, pattern matching resumes at the next equation.  Guards
may also refer to values bound in an associated where declaration.


> inOrder :: [Int] -> Bool
> inOrder (x1:x2:xs) | x1 <= x2 = True
> inOrder _                     = False

> e13 = inOrder [1,2,3]
> e14 = inOrder [2,1]

Section: 4.2  An Example

> take :: Int -> [a] -> [a]
> take 0     _      = []
> take _     []     = []
> take (n+1) (x:xs) = x:take n xs

> take' :: Int -> [a] -> [a]
> take' _     []     = []
> take' 0     _      = []
> take' (n+1) (x:xs) = x:take' n xs

> e15, e16, e17, e18 :: [Int]
> e15 = take 0 (error "e15")
> e16 = take' 0 (error "e16")
> e17 = take (error "e17") []
> e18 = take' (error "e18") []

Continued in part11.lhs

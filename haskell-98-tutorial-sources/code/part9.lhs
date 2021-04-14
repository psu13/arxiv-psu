Gentle Introduction to Haskell 98, Online Supplement 
Part 9
Covers Sections 3.3, 3.4, 3.5

> module Part9() where

> import Prelude hiding (take,zip)

Section: 3.3  Functions are Non-strict

Observing lazy evaluation can present difficulties.  The essential
question is `does an expression get evaluated?'.  While in theory using a
non-terminating computation is the way evaluation issues are examined,
we need a more practical approach.  In expressions, Haskell uses `error'
to denote bottom.  Evaluation of `error' will halt execution and print the
attached error message.  The error function can be used to create stub
functions for program components which have not been written yet or
as a value to insert into data structures where a data value is
required but should never be used. 

> e1 :: Bool    -- This can be any type at all!
> e1 = error "e1"  -- evaluate this and see what happens.

> const1 :: a -> Int
> const1 x = 1

> e2 :: Int
> e2 = const1 (error "e2")  -- The bottom (the error function) is not
>                           -- needed and will thus not be evaluated. 

Section: 3.4  "Infinite" Data Structures

Data structures are constructed lazily.  A constructor like : will not
evaluate its arguments until they are demanded.  All demands arise from
the need to print the result of the computation -- components not needed
to compute the printed result will not be evaluated.

> list1 :: [Int]
> list1 = (1:error "list1")

> e3 = head list1    -- does not evaluate the error
> e4 = tail list1    -- does evaluate error

Some infinite data structures.  Don't print these!  If you do, you will
need to interrupt the system or kill the Haskell process.

> ones :: [Int]
> ones = 1 : ones

> numsFrom :: Int -> [Int]
> numsFrom n = n : numsFrom (n+1)

An alternate numsFrom using series notation:

> numsFrom' :: Int -> [Int]
> numsFrom' n = [n..]

> squares :: [Int]
> squares = map (^2) (numsFrom 0)

Before we start printing anything, we need a function to truncate these
infinite lists down to a more manageable size.  The `take' function
extracts the first k elements of a list:

> take :: Int -> [a] -> [a]
> take 0 x      = []                 -- two base cases: k = 0
> take k []     = []                 -- or the list is empty
> take k (x:xs) = x : take (k-1) xs

now some printable lists:

> e5 :: [Int]
> e5 = take 5 ones

> e6 :: [Int]
> e6 = take 5 (numsFrom 10)

> e7 :: [Int]
> e7 = take 5 (numsFrom' 0)

> e8 :: [Int]
> e8 = take 5 squares

zip is a function which turns two lists into a list of 2 tuples.  If
the lists are of differing sizes, the result is as long as the
shortest list.

> zip (x:xs) (y:ys) = (x,y) : zip xs ys
> zip xs ys = []   -- one of the lists is []

> e9 :: [(Int,Int)]
> e9 = zip [1,2,3] [4,5,6]

> e10 :: [(Int,Int)]
> e10 = zip [1,2,3] ones

> fib :: [Int]
> fib = 1 : 1 : [x+y | (x,y) <- zip fib (tail fib)]

> e11 = take 10 fib

This can be done without the list comprehension:

> fib' :: [Int]
> fib' = 1 : 1 : map (\(x,y) -> x+y) (zip fib (tail fib))

This could be written even more cleanly using a map function which
maps a binary function over two lists at once.  This is in the
Prelude and is called zipWith.

> fib'' :: [Int]
> fib'' = 1 : 1 : zipWith (+) fib (tail fib)

For more examples using infinite structures look in the demo files
that come with Yale Haskell.  Both the pascal program and the
primes program use infinite lists.

Section: 3.5  The Error Function

Too late - we already used it!  

Continued in part10.lhs

Gentle Introduction to Haskell 98, Online Supplement 
Part 25
Covers Sections 13, 13.1, 13.2, 13.3, 13.4, 13.5

> module Part25() where

> import Array

Section: 13  Arrays
Section: 13.1  Index Types

Arrays are built on the class Ix.  Here are some quick examples of Ix:

> e1 :: [Int]
> e1 = range (0,4)
> e2 :: Int
> e2 = index (0,4) 2
> low,high :: (Int,Int)
> low = (1,1)
> high = (3,4)
> e3 = range (low,high)
> e4 = index (low,high) (3,2)
> e5 = inRange (low,high) (4,3)

Section: 13.2  Array Creation

> squares :: Array Int Int
> squares = array (1,100) [(i,i*i) | i <- [1..100]]

We can also parameterize this a little:

> squares' :: Int -> Array Int Int
> squares' n = array (1,n) [(i,i*i) | i <- [1..n]]

> e6 :: Int
> e6 = squares!6
> e7 :: (Int,Int)
> e7 = bounds squares
> e8 :: Array Int Int
> e8 = squares' 10

Here is a function which corresponds to `take' for lists.  It takes
an arbitrary slice out of an array.

> atake :: (Ix a) => Array a b -> (a,a) -> Array a b
> atake a (l,u) | inRange (bounds a) l && inRange (bounds a) u =
>                    array (l,u) [(i,a!i) | i <- range (l,u)]
>               | otherwise = error "Subarray out of range"

> e9 = atake squares (4,8)

> mkArray :: Ix a => (a -> b) -> (a,a) -> Array a b
> mkArray f bnds = array bnds [(i,f i) | i <- range bnds]

> e10 :: Array Int Int
> e10 = mkArray (\i -> i*i) (1,10)

> fibs :: Int -> Array Int Int
> fibs n = a where
>             a = array (0,n) ([(0,1), (1,1)] ++
>                              [(i,a!(i-1) + a!(i-2)) | i <- [2..n]])

> e11 = atake (fibs 50) (3,10)

> wavefront :: Int -> Array (Int,Int) Int
> wavefront n = a where
>                 a = array ((1,1),(n,n))
>                      ([((1,j),1) | j <- [1..n]] ++
>                       [((i,1),1) | i <- [2..n]] ++
>                       [((i,j),a!(i,j-1) + a!(i-1,j-1) + a!(i-1,j))
>                                   | i <- [2..n], j <- [2..n]])

> wave = wavefront 20
> e12 = atake wave ((1,1),(3,3))
> e13 = atake wave ((3,3),(5,5))

Here are some errors in array operations:

> e14 :: Int
> e14 = wave ! (0,0)  -- Out of bounds
> arr1 :: Array Int Int
> arr1 = array (1,10) [(1,1)] -- No value provided for 2..10
> e15,e16 :: Int
> e15 = arr1 ! 1  -- works OK
> e16 = arr1 ! 2  -- undefined by array

Section: 13.3  Accumulation

> hist :: (Ix a, Integral b) => (a,a) -> [a] -> Array a b
> hist bnds is = accumArray (+) 0 bnds [(i,1) | i <- is, inRange bnds i]

> e17 :: Array Char Int
> e17 = hist ('a','z') "This counts the frequencies of each lowercase letter"

> decades :: (RealFrac a) => a -> a -> [a] -> Array Int Int
> decades a b = hist (0,9) . map decade
>                 where
>                   decade x = floor ((x-a) * s)
>                   s = 10 / (b - a)

> test1 :: [Float]
> test1 = map sin [0..100]  -- take the sine of the 0 - 100
> e18 = decades 0 1 test1

Section: 13.4  Incremental Updates

> swapRows :: (Ix a, Ix b, Enum b) => a -> a -> Array (a,b) c -> Array (a,b) c
> swapRows i i' a = a // ([((i,j),a!(i',j)) | j <- [jLo..jHi]] ++
> 			  [((i',j),a!(i,j)) | j <- [jLo..jHi]])
>                where ((iLo,jLo),(iHi,jHi)) = bounds a

> arr2 :: Array (Int,Int) (Int,Int)
> arr2 = array ((1,1),(5,5)) [((i,j),(i,j)) | (i,j) <- range ((1,1),(5,5))]

> e19 = swapRows 2 3 arr2

Printing the arrays in more readable form makes the results easier
to view.

This is a printer for 2d arrays; width is # of columns per element 

> aprint :: (Show b) => Array (Int, Int) b -> Int -> ShowS
> aprint a width = shows (bounds a) . showChar '\n' . showRows lx ly where
>   showRows r c | r > ux = showChar '\n'
>   showRows r c | c > uy = showChar '\n' . showRows (r+1) ly
>   showRows r c = showElt (a!(r,c)) . showRows r (c+1)
>   showElt e = showString (take width (show e ++ repeat ' ')) . showChar ' '
>   ((lx,ly),(ux,uy)) = bounds a

> showArray :: (Show b) => Array (Int, Int) b -> Int -> IO ()
> showArray a w = putStrLn (aprint a w "") 

> e20 = showArray e19 6

> swapRows' :: (Ix a, Ix b, Enum b) => a -> a -> Array (a,b) c -> Array (a,b) c
> swapRows' i i' a = a // [assoc | j <- [jLo..jHi],
>                                  assoc <- [((i,j),a!(i',j)),
> 	  				     ((i',j),a!(i,j))]]
>                where ((iLo,jLo),(iHi,jHi)) = bounds a

> e21 = showArray (swapRows' 1 5 arr2) 6

Section: 13.5  An example: Matrix Multiplication

> matMult :: (Ix a, Ix b, Ix c, Num d) =>
>               Array (a,b) d -> Array (b,c) d -> Array (a,c) d
> matMult x y =
>   array resultBounds
>         [((i,j), sum [x!(i,k) * y!(k,j) | k <- range (lj,uj)])
>                   | i <- range (li,ui),
>                     j <- range (lj',uj')]
>  where
>     ((li,lj),(ui,uj)) = bounds x
>     ((li',lj'),(ui',uj')) = bounds y
>     resultBounds
>       | (lj,uj)==(li',ui')    =  ((li,lj'),(ui,uj'))
>       | otherwise             = error "matMult: incompatible bounds"

> mat1,mat2,mat3,mat4 :: Array (Int,Int) Int
> mat1 = array ((0,0),(1,1)) [((0,0),1), ((0,1),0), ((1,0),0), ((1,1),1)] 
> mat2 = array ((0,0),(1,1)) [((0,0),1), ((0,1),1), ((1,0),1), ((1,1),1)] 
> mat3 = array ((0,0),(1,1)) [((0,0),1), ((0,1),2), ((1,0),3), ((1,1),4)] 
> mat4 = array ((0,0),(1,2)) [((0,0),1), ((0,1),2), ((0,2),3), 
> 			      ((1,0),4), ((1,1),5), ((1,2),6)] 

> e22 = showArray (matMult mat1 mat2) 4
> e23 = showArray (matMult mat2 mat3) 4
> e24 = showArray (matMult mat1 mat4) 4
> e25 = showArray (matMult mat4 mat1) 4

> matMult' :: (Ix a, Ix b, Ix c, Num d) =>
>               Array (a,b) d -> Array (b,c) d -> Array (a,c) d
> matMult' x y =
>   accumArray (+) 0 ((li,lj'),(ui,uj'))
>         [((i,j), x!(i,k) * y!(k,j))
>                   | i <- range (li,ui),
>                     j <- range (lj',uj'),
>                     k <- range (lj,uj)]
>  where
>     ((li,lj),(ui,uj)) = bounds x
>     ((li',lj'),(ui',uj')) = bounds y
>     resultBounds
>        | (lj,uj)==(li',ui')    =  ((li,lj'),(ui,uj'))
>        | otherwise             = error "matMult: incompatible bounds"

> e26 = showArray (matMult mat1 mat2) 4
> e27 = showArray (matMult mat2 mat3) 4

> genMatMul :: (Ix a, Ix b, Ix c) =>
>               ([f] -> g) -> (d -> e -> f) ->
>               Array (a,b) d -> Array (b,c) e -> Array (a,c) g
> genMatMul f g x y =
>   array ((li,lj'),(ui,uj'))
>         [((i,j), f [(x!(i,k)) `g` (y!(k,j)) | k <- range (lj,uj)])
>                   | i <- range (li,ui),
>                     j <- range (lj',uj')]
>  where
>     ((li,lj),(ui,uj)) = bounds x
>     ((li',lj'),(ui',uj')) = bounds y
>     resultBounds
>          | (lj,uj)==(li',ui')    =  ((li,lj'),(ui,uj'))
>          | otherwise             = error "matMult: incompatible bounds"

> e28 = showArray (genMatMul maximum (-) mat2 mat1) 4
> e29 = showArray (genMatMul and (==) mat1 mat2) 6
> e30 = showArray (genMatMul and (==) mat1 mat1) 6

This is the end of the online supplement


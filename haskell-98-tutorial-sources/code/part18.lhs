Gentle Introduction to Haskell 98, Online Supplement 
Part 18
Covers Sections 9, 9.1, 9.2, 9.3

Section 9.1 Monadic Classes
Section 9.2 Built-in Monads

> module Part18() where 

> e1 = [(x,y) | x <- [1,2,3] , y <- [1,2,3], x /= y]

> e2 = do x <- [1,2,3]
>         y <- [1,2,3]
>         True <- return (x /= y)
>         return (x,y)

> e3 = [1,2,3] >>= (\ x -> [1,2,3] >>= (\y -> return (x/=y) >>=
>      (\r -> case r of True -> return (x,y)
>                       _    -> fail "")))

> mvLift2                :: (a -> b -> c) -> [a] -> [b] -> [c]
> mvLift2 f x y          =  do x' <- x
>                              y' <- y
>                              return (f x' y')

> e4 = mvLift2 (+) [1,3] [10,20,30]
> e5 = mvLift2 (\a b -> [a,b]) "ab" "cd"
> e6 = mvLift2 (*) [1,2,4] []

A quick example using Maybe: first, generalize mvLift2 to all monads:

> lift2'                  :: Monad m => (a -> b -> c) -> m a -> m b -> m c
> lift2' f x y            =  do x' <- x
>                               y' <- y
>                               return (f x' y')

> e7 = lift2' (+) (Just 1) (Just 2)
> e8 = lift2' (+) (Just 1) Nothing

Section 9.3

> type S = Int

> data SM a = SM (S -> (a,S))  -- The monadic type

> instance Monad SM where
>   -- defines state propagation
>   SM c1 >>= fc2         =  SM (\s0 -> let (r,s1) = c1 s0 
>                                           SM c2 = fc2 r in
>                                          c2 s1)
>   return k              =  SM (\s -> (k,s))

>  -- extracts the state from the monad
> readSM                  :: SM S
> readSM                  =  SM (\s -> (s,s))

>  -- extracts the state from the monad
> updateSM                :: (S -> S) -> SM ()  -- alters the state
> updateSM f              =  SM (\s -> ((), f s)) 

> -- run a computation in the SM monad
> runSM                   :: S -> SM a -> (a,S)
> runSM s0 (SM c)         =  c s0

This is fairly hard to demonstrate in a manner that makes this construction
look useful!  This demonstrates the basic operation:

> e9 = runSM 0 (do x <- readSM  -- should be 0
>                  updateSM (+1)
>                  y <- readSM   -- now a 1 
>                  return (x,y))

Most of the SM functions are present in the next example in slightly 
altered forms.

> type Resource           =  Integer

> data R a = R (Resource -> (Resource, Either a (R a)))

> instance Monad R where
>   R c1 >>= fc2          = R (\r -> case c1 r of
>                                 (r', Left v)    -> let R c2 = fc2 v in
>                                                      c2 r'
>                                 (r', Right pc1) -> (r', Right (pc1 >>= fc2)))
>   return v              = R (\r -> (r, (Left v)))

> step                    :: a -> R a
> step v                  =  c where
>                               c = R (\r -> if r /= 0 then (r-1, Left v)
>                                                      else (r, Right c))

> run                     :: Resource -> R a -> Maybe a
> run s (R p)             =  case (p s) of 
>                              (_, Left v) -> Just v
>                              _           -> Nothing

> (|||)                   :: R a -> R a -> R a
> c1 ||| c2               =  oneStep c1 (\c1' -> c2 ||| c1')
>    where
>         oneStep          :: R a -> (R a -> R a) -> R a
>         oneStep (R c1) f =
>              R (\r -> case c1 1 of
>                          (r', Left v) -> (r+r'-1, Left v)
>                          (r', Right c1') ->  -- r' must be 0
>                           let R next = f c1' in
>                             next (r+r'-1))

> lift1                   :: (a -> b) -> (R a -> R b)
> lift1 f                 =  \ra1 -> do a1 <- ra1
>                                       step (f a1)

> lift2                   :: (a -> b -> c) -> (R a -> R b -> R c)
> lift2 f                 =  \ra1 ra2 -> do a1 <- ra1
>                                           a2 <- ra2
>                                           step (f a1 a2)

> (==*)                   :: Ord a => R a -> R a -> R Bool
> (==*)                   =  lift2 (==)

These null instances are needed to allow the definition of Num (R a).

> instance Show (R a) 
> instance Eq (R a) 

> instance Num a => Num (R a) where
>   (+)                   =  lift2 (+)
>   (-)                   =  lift2 (-)
>   negate                =  lift1 negate
>   (*)                   =  lift2 (*)
>   abs                   =  lift1 abs
>   fromInteger           =  return . fromInteger

> ifR                     :: R Bool -> R a -> R a -> R a
> ifR tst thn els         =  do t <- tst
>                               if t then thn else els


> inc                     :: R Integer -> R Integer
> inc x                   =  x + 1

> fact                    :: R Integer -> R Integer
> fact x                  =  ifR (x ==* 0) 1 (x * fact (x-1))

> e10 = run 0 (inc 1)  -- won't complete
> e11 = run 10 (inc 1)  -- will complete
> e12 = run 10 (fact 2)
> e13 = run 10 (fact 20)
> e14 = run 100 (fact (-1) ||| (fact 3))

We can dress this up a little with a nicer "run" function.  This one
adds a little more information:

> run'                    :: Show a => Integer -> R a -> IO ()
> run' maxSteps (R p)     =  case (p maxSteps) of 
>                              (r, Left v) -> putStrLn ("Computed " ++
>                                                        show v ++ " in " ++
>                                                        show (maxSteps-r) ++
>                                                       " steps")
>                              _           -> putStrLn ("Non termination.")

> e15 = run' 100 (fact 3 ||| fact 4)
> e16 = run' 100 (fact (-1) ||| fact 4) 
> e17 = run' 100 (fact 4)



Continued in part19.lhs

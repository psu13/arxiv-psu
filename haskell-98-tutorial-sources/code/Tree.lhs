> module Tree ( Tree(Leaf,Branch), fringe ) where

Tree(..) would work also

> data Tree a = Leaf a | Branch (Tree a) (Tree a)   deriving Show

> fringe :: Tree a -> [a]
> fringe (Leaf x)             = [x]
> fringe (Branch left right)  = fringe left ++ fringe right


> module Fringe where
> import Tree ( Tree(..))

> fringe :: Tree a -> [a]   -- A different definition of fringe
> fringe (Leaf x) = [x]
> fringe (Branch x y) = fringe x

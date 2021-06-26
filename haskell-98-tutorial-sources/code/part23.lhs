Gentle Introduction to Haskell 98, Online Supplement 
Part 23
Covers Sections 11.2, 11.3

11.2 Abstract Data Types

> module Part23() where

> import TreeADT

See TreeADT.lhs

Since the constructors for type Tree are hidden, pattern matching
cannot be used.

> fringe :: Tree a -> [a]
> fringe x = if isLeaf x then [cell x]
>                        else fringe (left x) ++ fringe (right x)

> e1 :: [Int]
> e1 = fringe (branch (branch (leaf 3) (leaf 2)) (leaf 1))

11.3 More Features

No examples (yet).

Continued in part24.lhs

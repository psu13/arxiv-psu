Gentle Introduction to Haskell 98, Online Supplement 
Part 21
Covers Section 11

Section 11

> module Part21() where

Since each of these files is a separate module we need to place 
Tree in it's own module.  See Tree.lhs

> import Tree ( Tree(Leaf, Branch), fringe)

> e1 :: [Int]
> e1 = fringe (Branch (Leaf 1) (Leaf 2))

You could also just `import Tree' and get everything from Tree without
explicitly naming the entities you need.

This interactive Haskell environment can evaluate expressions in
any module.  You can do :m Tree to get to that module for interactive
evaluation.

Continued in Part22.lhs

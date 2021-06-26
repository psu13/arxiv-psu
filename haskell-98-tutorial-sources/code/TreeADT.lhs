Since TreeADT does not import Tree it can use the name Tree without
any conflict.  Each module has its own separate namespace.

> module TreeADT (Tree, leaf, branch, cell, left,
>                right, isLeaf) where

> data Tree a = Leaf a | Branch (Tree a) (Tree a)    deriving Show

> leaf = Leaf
> branch = Branch
> cell (Leaf a) = a
> left (Branch l r) = l
> right (Branch l r) = r
> isLeaf (Leaf _) = True
> isLeaf _        = False

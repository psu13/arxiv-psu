Gentle Introduction to Haskell 98, Online Supplement 
Part 22
Covers Section 11.1

Section: 11.1  Qualified Names

> module Part22() where
> import Tree ( Tree(Leaf,Branch), fringe )
> import qualified Fringe ( fringe )  

See Fringe.lhs

> e1 = do print (fringe (Branch (Leaf 1) (Leaf 2)))
>         print (Fringe.fringe (Branch (Leaf 1) (Leaf 2)))

Continued in part23.lhs

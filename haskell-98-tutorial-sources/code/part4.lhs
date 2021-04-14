Gentle Introduction to Haskell 98, Online Supplement 
Part 4
Covers Section 2.3

Section: 2.3  Recursive Types

> module Part4() where

> data Tree a = Leaf a | Branch (Tree a) (Tree a)    deriving Show

The following typings are implied by this declaration.  As before,
this is not valid Haskell syntax.

Leaf :: a -> Tree a
Branch :: Tree a -> Tree a -> Tree a

> fringe :: Tree a -> [a]
> fringe (Leaf x) = [x]
> fringe (Branch left right) = fringe left ++ fringe right
 
The following trees can be used to test functions:

> tree1 :: Tree Int
> tree1 = Branch (Leaf 1) (Branch (Branch (Leaf 2) (Leaf 3)) (Leaf 4))
> tree2 :: Tree Int
> tree2 = Branch (Branch (Leaf 3) (Leaf 1)) (Branch (Leaf 4) (Leaf 1))
> tree3 :: Tree Int
> tree3 = Branch tree1 tree2

Try evaluating `fringe tree1' and others.

Here's another tree function:

> twist :: Tree a -> Tree a
> twist (Branch left right) = Branch right left
> twist x = x        -- This equation only applies to leaves

Here's a function which compares two trees to see if they have the
same shape.  Note the signature: the two trees need not contain the
same type of values.

> sameShape :: Tree a -> Tree b -> Bool
> sameShape (Leaf x) (Leaf y) = True
> sameShape (Branch l1 r1) (Branch l2 r2) = sameShape l1 l2 && sameShape r1 r2
> sameShape x y = False  -- One is a branch, the other is a leaf

The && function is a boolean AND function.

The entire pattern on the left hand side must match in order for the 
right hand side to be evaluated.  The first clause requires both 
arguments to be a leaf' otherwise the next equation is tested.  
The last clause will always match: the final x and y match both 
leaves and branches.

This compares a tree of integers to a tree of booleans.

> e1 = sameShape tree1 (Branch (Leaf True) (Leaf False))

Continued in part5.lhs

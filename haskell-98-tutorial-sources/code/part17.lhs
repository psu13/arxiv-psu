Gentle Introduction to Haskell 98, Online Supplement 
Part 17
Covers Section 8.4

Section: 8.4  Derived Instances

We have actually been using the derived Show instances all along for
printing out trees and other structures we have defined.  The code
in the tutorial for the Eq and Ord instance of Tree is created
implicitly by the deriving clause so there is no need to write it
here.

> data Tree a = Leaf a | Branch (Tree a) (Tree a) deriving (Eq,Ord,Show)

Now we can fire up both Eq and Ord functions for trees:

> tree1, tree2, tree3, tree4 :: Tree Int
> tree1 = Branch (Leaf 1) (Leaf 3)
> tree2 = Branch (Leaf 1) (Leaf 5)
> tree3 = Leaf 4
> tree4 = Branch (Branch (Leaf 4) (Leaf 3)) (Leaf 5)

> e1 = tree1 == tree1
> e2 = tree1 == tree2
> e3 = tree1 < tree2

> quicksort :: Ord a => [a] -> [a]
> quicksort [] = []
> quicksort (x:xs) = quicksort [y | y <- xs, y <= x] ++
>                    [x] ++
>                    quicksort [y | y <- xs, y > x]

> e4 = quicksort [tree1,tree2,tree3,tree4]

Now for Enum: 

> data Day = Sunday | Monday | Tuesday | Wednesday | Thursday |
>            Friday | Saturday     deriving (Show,Eq,Ord,Enum)

> e5 = quicksort [Monday,Saturday,Friday,Sunday]
> e6 = [Wednesday .. Friday]
> e7 = [Monday, Wednesday ..]
> e8 = [Saturday, Friday ..]

Continued in part18.lhs

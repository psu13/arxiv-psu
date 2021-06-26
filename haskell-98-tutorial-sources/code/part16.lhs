Gentle Introduction to Haskell 98, Online Supplement 
Part 16
Covers Section 8, 8.1, 8.2, 8.3

> module Part16() where

Section: 8.1  Equality and Ordered Classes
Section: 8.2  Enumeration and Index Classes

No examples are provided for 5.1 or 5.2.  The standard Prelude contains
many instance declarations which illustrate the Eq, Ord, and Enum classes.

Section: 8.3   The Read and Show Classes

This is the slow showTree.  The `show' function is part of the
Text class and works with all the built-in types.  The context `Text a'
arises from the call to show for leaf values.

> data Tree a = Leaf a | Branch (Tree a) (Tree a) deriving Show

> showTree :: (Show a) => Tree a -> String
> showTree (Leaf x)     = show x
> showTree (Branch l r) = "<" ++ showTree l ++ "|" ++ showTree r ++ ">"

> tree1 :: Tree Int
> tree1 = Branch (Leaf 1) (Branch (Leaf 3) (Leaf 6))

> e1 = showTree tree1

Now the improved showTree; shows is already defined for all
built in types.

> showsTree  :: Show a => Tree a -> String -> String
> showsTree (Leaf x) s = shows x s
> showsTree (Branch l r) s = '<' : showsTree l ('|' : showsTree r ('>' : s))

> e2 = showsTree tree1 ""

The final polished version.  ShowS is predefined in the Prelude so we
don't need it here. 

> showsTree'  :: Show a => Tree a -> ShowS
> showsTree' (Leaf x) = shows x
> showsTree' (Branch l r) = ('<' :) . showsTree' l . ('|' :) .
>                           showsTree' r . ('>' :)

> e3 = showsTree' tree1 ""

In the Prelude, there is a showChar function that can be used instead
of ('<' :).

Now for the reading function.  Again, ReadS is predefined and reads works
for all built-in types.  The generators in the list comprehensions are
patterns: p <- l binds pattern p to successive elements of l which
match p.  Elements not matching p are skipped.

> readsTree :: (Read a) => ReadS (Tree a)
> readsTree ('<':s)  = [(Branch l r, u) | (l, '|':t) <- readsTree s,
>                                         (r, '>':u) <- readsTree t ]
> readsTree s        = [(Leaf x,t)      | (x,t) <- reads s]

> e4 :: [(Int,String)]
> e4 = reads "5 golden rings"

> e5 :: [(Tree Int,String)]
> e5 = readsTree "<1|<2|3>>"
> e6 :: [(Tree Int,String)]
> e6 = readsTree "<1|2"
> e7 :: [(Tree Int,String)]
> e7 = readsTree "<1|<<2|3>|<4|5>>> junk at end"

Before we do the next readTree, let's play with the lex function.

> e8 :: [(String,String)]
> e8 = lex "foo bar bletch"

Here's a function to completely lex a string.  This does not handle
lexical ambiguity - lex would return more than one possible lexeme
when an ambiguity is encountered and the patterns used here would not
match.

> lexAll :: String -> [String]
> lexAll s = case lex s of
>             [("",_)] -> []  -- lex returns an empty token if none is found
>             [(token,rest)] -> token : lexAll rest

> e9 = lexAll "lexAll :: String -> [String]"
> e10 = lexAll "<1|<a|3>>"

Finally, the complete reader.  This is not sensitive to white space as
were the previous versions.  When you derive the Show class for a data
type the reader generated automatically is similar to this in style.

> readsTree' :: (Read a) => ReadS (Tree a)
> readsTree' s = [(Branch l r, x) | ("<", t) <- lex s,
> 				  (l, u)   <- readsTree' t,
>                                   ("|", v) <- lex u,
>                                   (r, w)   <- readsTree' v,
> 				  (">", x) <- lex w ]
>                 ++
>                 [(Leaf x, t)    | (x, t) <- reads s]
 
When testing this program, you must make sure the input conforms to
Haskell lexical syntax.  If you remove spaces between | and < or >
they will lex as a single token as you should have noticed with e10.

> e11 :: [(Tree Int,String)]
> e11 = readsTree' "<1 | <2 | 3> >"
> e12 :: [(Tree Bool,String)]
> e12 = readsTree' "<True|False>"

Finally, here is a simple version of read for trees only:

> read' :: (Read a) => String -> (Tree a)
> read' s = case (readsTree' s) of
>            [(tree,"")] -> tree   -- Only one parse, no junk at end
>            []          -> error "Couldn't parse tree"
>            [_]         -> error "Crud after the tree"  -- unread chars at end
>            _           -> error "Ambiguous parse of tree"

> e13 :: Tree Int
> e13 = read' "foo"
> e14 :: Tree Int
> e14 = read' "< 1 | < 2 | 3 > >"
> e15 :: Tree Int
> e15 = read' "3 xxx"

Continued in part17.lhs

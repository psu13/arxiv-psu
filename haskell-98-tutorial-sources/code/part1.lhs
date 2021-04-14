
Gentle Introduction to Haskell 98, Online Supplement 
Part 1
Covers Section 2


Introduction

This is a programming supplement to `A Gentle Introduction to Haskell',
version 98, by Hudak, Peterson, and Fasel.  This supplement augments
the tutorial by providing executable Haskell programs which you can
run and experiment with.  All program fragments in the tutorial are
found here, as well as other examples not included in the tutorial.

You should have a copy of both the `Gentle Introduction' and the
Haskell 98 report itself to make full use of this tutorial.  Although the
`Gentle Introduction' is meant to stand by itself, it is often easier
to learn a language through actual use and experimentation than by
reading alone.  Once you finish this introduction, we recommend that
you proceed section by section through the `Gentle Introduction' and
after having read each section go back to this online tutorial.  You
should wait until you have finished the tutorial before attempting to
read the report.  We suggest that you run this code using Hugs, a
small Haskell interpreter.  Everything is available for download at
haskell.org.

This tutorial does not assume any familiarity with Haskell or other
functional languages.  Throughout the online component of this
tutorial, we try to relate Haskell to other programming languages and
clarify the written tutorial through additional examples and text.


Using Hugs

If you are using this with Hugs, here are the commands you will need
to use.  Start up hugs and change to the directory containing these
files using `:cd'.  Load each part using `:l part1' (or whatever part
is next).  Inside each part, just type an expression to evaluate it.
The expressions that are meant to be evaluated are e1, e2, and so on
so if you type `e1' you will see the result of evaluating e1.  You can
also type more complex expressions if you want.  You may also edit
these .lhs files (make a fresh copy of them if you want before you
start); if you change the .lhs file you have to type `:r' to reload
the file into hugs.  If you made any mistakes in the program you'll
have to fix them to get the :r to work.


Organization of the Online Tutorial

This online tutorial is divided into a series of file.  Each file
covers one or more sections in the written tutorial.  Each file is a
single Haskell program.  Comments in the program contain the text of
the online tutorial.

To create useful, executable examples of Haskell code, some language
constructs need to be revealed well before they are explained in the
tutorial.  We attempt to point these out when they occur.  Some
small changes have been made to the examples in the written tutorial;
these are usually cosmetic and should be ignored.  Don't feel you have
to understand everything on a page before you move on -- many times
concepts become clearer as you move on and can relate them to other
aspect of the language.

Each part of the tutorial defines a set of variables.  Some of
these are named e1, e2, and so on.  These `e' variables are the ones
which are meant for you to evaluate as you go through the tutorial.
Of course you may evaluate any other expressions or variables you wish.


The Haskell Report

While the report is not itself a tutorial on the Haskell language, it
can be an invaluable reference to even a novice user.  A very
important feature of Haskell is the Prelude.  The Prelude is a
rather large chunk of Haskell code which is implicitly a part of every
Haskell program.  Whenever you see functions used which are not
defined in the current page, these come from the Prelude.  Appendix A
of the report lists the entire Prelude; the index has an entry for
every function in the Prelude.  Looking at the definitions in the
Prelude is sometimes necessary to fully understand the programs in
this tutorial.

Another reason to look at the report is to understand the syntax of
Haskell.  Appendix B contains the complete syntax for Haskell.  The
tutorial treats the syntax very informally; the precise details are
found only in the report.


You are now ready to start the tutorial.  Start by reading the `Gentle
Introduction' section 1 then proceed through the online tutorial using
:l (if you are using hugs) to advance to the next part.  You should
read about each topic first before turning to the associated
programming example in the online tutorial.


Section: 2   Values, Types, and Other Goodies

This tutorial is written in `literate Haskell'.  This style requires
that all lines containing Haskell code start with `>'; all other
lines are comments and are discarded by the compiler.  Appendix C of
the report defines the syntax of a literate program.  This is the
first line of the Haskell program on this page:

> module Part1() where

Comments at the end of source code lines start with `--'.  We use
these throughout the tutorial to place explanatory text in the
program. 

All Haskell programs start with a module declaration, as in the
previous `module Test(Bool) where'.  This can be ignored for now.

We will start by defining some identifiers (variables) using equations.
You can print out the value of an identifier by typing the name of the
identifier you wish to evaluate.  Not all definitions are very
interesting to print out - by convention, we will use variables e1,
e2, ... to denote values that are interesting to print.

We will start with some constants as well as their associated type.
There are two ways to associate a type with a value: a type declaration
and an expression type signature.  Here is an equation and a type
declaration:

> e1 :: Int     -- This is a type declaration for the identifier e1
> e1 = 5        -- This is an equation defining e1

You can evaluate the expression e1 and watch the system print `5'.

Remember that Hugs evaluates expressions, not definitions.  If you
type `e1 = 5', a definition, you get an error.  Definitions have to be
placed in the module.  

The type declaration for e1 is not really necessary but we will try to
always provide type declarations for values to help document the program
and to ensure that the system infers the same type we do for an expression.
If you change the value for e1 to `True', the program will no longer
compile due to the type mismatch.

We will briefly mention expression type signatures: these are attached to 
expressions instead of identifiers.  Here are equivalent ways to do
the previous definition:

> e2 = 5 :: Int
> e3 = (2 :: Int) + (3 :: Int)

The :: has very low precedence in expressions and should usually be placed
in parenthesis.

There are two completely separate languages in Haskell: an expression
language for values and a type language for type signatures.  The type
language is used only in the type declarations previously described and
declarations of new types, described later.  Haskell uses a
uniform syntax so that values resemble their type signature as much as
possible.  However, you must always be aware of the difference between
type expressions and value expressions.

Here are some of the predefined types Haskell provides:
   type           Value Syntax                Type Syntax
Small integers    <digits>                    Int

> e4 :: Int
> e4 = 12345

Characters        '<character>'               Char

> e5 :: Char
> e5 = 'a'

Strings           "chars"                     String

> e6 :: String
> e6 = "abc"

Boolean           True, False                 Bool

> e7 :: Bool
> e7 = True

Floating point    <digits.digits>             Float

> e8 :: Float
> e8 = 123.456

Homogeneous list  [<exp1>,<exp2>,...]         [<constituant type>]

> e9 :: [Int]
> e9 = [1,2,3]

Tuple             (<exp1>,<exp2>,...)         (<exp1-type>,<exp2-type>,...)

> e10 :: (Char,Int)
> e10 = ('b',4)

Functional        described later             domain type -> range type

> inc :: Int -> Int  -- a function which takes an Int argument and returns Int
> inc x = x + 1      -- test this by evaluating `int 4'

Here's a few leftover examples from section 2:

> e11 = inc (inc 3)  -- you could also evaluate `inc (inc 3)' directly
 
Uncomment (by adding removing the --) this next line to see a compile
time type error. 

> -- e12 = 'a'+'b'

This is a rather odd error message.  Essentially says that there is no
way to add characters.  If there were, it would be by defining an
instance in the class Num (this is where + is defined) for the type
Char. 

Continued in part2.lhs

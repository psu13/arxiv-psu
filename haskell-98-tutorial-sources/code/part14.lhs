Gentle Introduction to Haskell 98, Online Supplement 
Part 14
Covers Section 7, 7.1, 7.2

> module Part14 where

> import Prelude hiding (putStr, getLine, sequence_)
> import IO (isEOFError)

Both putStr and getLine are actually in the prelude.

Section: 7  I/O

Section 7.1

The I/O monad divides the Haskell world into values and actions.  So far,
we have only used values but now we need to execute actions.  Hugs
looks at the type of an expression typed at the prompt.  If the type
is an IO type, the expression is assumed to be an action and the
action is invoked.  If the type is not IO t (for any t), then the
expression value is printed.

> e1 = do c <- getChar
>         putChar c      

> ready = do c <- getChar
>            return (c == 'y')

The print function converts a value to a string (using the Show class)
and prints it with a newline at the end.

> e2 = do r <- ready
>         print r

You can't put the call to ready and print in the same expression.
This would be wrong:
e2 = print (ready)

> getLine :: IO String
> getLine = do c <- getChar
>              if c == '\n'
>                 then return ""
>                 else do l <- getLine
>                         return (c:l)

putStrLn prints a string and adds a newline at the end.

> e3 = do putStr "Type Something: "
>         str <- getLine
>         putStrLn ("You typed: " ++ str)

Section 7.2

> todoList :: [IO ()]
> todoList = [putChar 'a',
>             do putChar 'b'
>                putChar 'c',
>             do c <- getChar
>                putChar c]

> sequence_        :: [IO ()] -> IO ()
> sequence_        =  foldr (>>) (return ())

> e4 = sequence_ todoList

> putStr    :: String -> IO ()
> putStr s = sequence_ (map putChar s)

> e5 = putStr "Hello World"

Continued in part15.lhs

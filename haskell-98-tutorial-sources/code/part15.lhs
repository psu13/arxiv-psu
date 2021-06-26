Gentle Introduction to Haskell 98, Online Supplement 
Part 15
Covers Section 7.3, 7.3, 7.5 

> module Part15() where

> import IO

Section 7.3

To experiment with I/O errors, we need to get a bit creative.  Generating
an error is generally OS specific so instead we will use errors that
are directly under user control.  The function

userError :: String -> IOError

generates an error value and the function

ioeGetErrorString :: IOError -> String

gets the string out of an error.

This version of getChar that raises an error when an @ or ? is entered:

> getCharE           :: IO Char
> getCharE           =  do c <- getChar
>                          case c of
>                            '@' -> ioError (userError "@")
>                            '?' -> ioError (userError "?")
>                            _   -> return c

Using this extended getChar we can build getChar' to catch only @
There is currently a bug in Hugs - if this gets fixed change the 
definition is isAtError.

> isAtError :: IOError -> Bool
> isAtError e = ioeGetErrorString e == "User error: @"  -- for bug in hugs
> -- isAtError e = ioeGetErrorString e == "@"   -- Should be this

> getChar'                :: IO Char
> getChar'                =  getCharE `catch` atHandler where
>     atHandler e = if isAtError e then return '\n' else ioError e

> getLine'        :: IO String
> getLine'        = catch getLine'' (\err -> return ("Error: " ++ show err))
>     where
>                    getLine'' = do c <- getChar'
>                                   if c == '\n' then return ""
>                                                else do l <- getLine'
>                                                        return (c:l)

Observe the behavior when you enter @ or ?

> e1 = getCharE

Now try lines with @ and ? in them.

> e2 = do l <- getLine'
>         putStrLn l

Section 7.4

You will have to set up some files to play with if you want to try
this one.

> e3 = do fromHandle <- getAndOpenFile "Copy from: " ReadMode
>         toHandle   <- getAndOpenFile "Copy to: " WriteMode 
>         contents   <- hGetContents fromHandle
>         hPutStr toHandle contents
>         hClose toHandle
>         putStr "Done."

> getAndOpenFile          :: String -> IOMode -> IO Handle

> getAndOpenFile prompt mode =
>    do putStr prompt
>       name <- getLine
>       catch (openFile name mode)
>             (\_ -> do putStrLn ("Cannot open "++ name ++ "\n")
>                       getAndOpenFile prompt mode)
>

Continued in part16.lhs















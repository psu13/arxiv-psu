Gentle Introduction to Haskell 98, Online Supplement 
Part 11
Covers Sections 4.3, 4.4, 4.5, 4.6

> module Part11() where

> import Prelude hiding (take)

Section: 4.3 Case Expressions

The function `take' using a case statement instead of multiple equations:

> take :: Int -> [a] -> [a]
> take m ys = case (m,ys) of
>              (0  ,_)    -> []
>              (_  ,[])   -> []
>              (n+1,x:xs) -> x : take n xs

The function take using if then else.  We can also eliminate the n+k
pattern just for fun.  The original version of take is much easier to read!

> take' :: Int -> [a] -> [a]
> take' m ys = if m == 0 then [] else
>               if null ys then [] else
>                if m > 0 then head ys : take (m-1) (tail ys)
>                 else error "m < 0"

Section: 4.4  Lazy Patterns

Before the client-server example, here is a contrived example of lazy
patterns.  The first version will fail to pattern match whenever the
the first argument is [].  The second version will always pattern
match initially but x will fail if used when the list is [].

> nonlazy :: [Int] -> Bool -> [Int]
> nonlazy (x:xs) isNull  = if isNull then [] else [x]

> e1 = nonlazy [1,2] False
> e2 = nonlazy [] True
> e3 = nonlazy [] False

This version will never fail the initial pattern match

> lazy :: [Int] -> Bool -> [Int]
> lazy ~(x:xs) isNull  = if isNull then [] else [x]

> e4 = lazy [1,2] False
> e5 = lazy [] True
> e6 = lazy [] False

The server - client example is a little hard to demonstrate.  We'll avoid
the initial version which loops.  Here is the version with irrefutable
patterns.

> type Response = Int
> type Request = Int

> client :: Request -> [Response] -> [Request]
> client init ~(resp:resps) = init : client (next resp) resps

> server :: [Request] -> [Response]
> server (req : reqs) = process req : server reqs

Next maps the response from the previous request onto the next request

> next :: Response -> Request 
> next resp = resp

Process maps a request to a response

> process :: Request -> Response
> process req = req+1

> requests :: [Request]
> requests = client 0 responses

> responses :: [Response]
> responses = server requests

> e7 = take 5 responses

The lists of requests and responses are infinite - there is no need to
check for [] in this program.  These lists correspond to streams in other
languages.

Here is fib again:

> fib :: [Int]
> fib@(_:tfib) = 1 : 1 : [ a+b | (a,b) <- zip fib tfib]

> e8 = take 10 fib

Section: 4.5  Lexical Scoping and Nested Forms

One thing that is important to note is that the order of the
definitions in a program, let expression, or where clauses is
completely arbitrary.  Definitions can be arranged 'top down'
or `bottom up' without changing the program.

> e9 = let y = 2 :: Float
>          f x = (x+y)/y
>      in f 1 + f 2

> f :: Int -> Int -> String
> f x y | y > z  = "y > x^2"
>       | y == z = "y = x^2"
>       | y < z  = "y < x^2"
>   where
>     z = x*x
 
> e10 = f 2 5
> e11 = f 2 4

Section: 4.6  Layout

There's nothing much to demonstrate here.  We have been using layout all
through the tutorial.  The main thing is to be careful line up the
first character of each definition.  For example, if you
change the indentation of the definition of f in e9 you will get a
parse error.

Continued in part12.lhs

-- headCode.hs

module HeadCode where

{- 

Rewrite the following let functions with where functions 

1. let x = 5 in x
2. let x = 5 in x * x
3. let x = 5; y = 6 in x * y
4. let x = 3; y = 1000 in x + 3

5. let x = 3; y = 1000 in x * 3 + y
6. let y = 10; x = 10 * 5 + y in x * 5
7. let x = 7
y = negate x
z = y * 10
in z / x + y
-}

q1 = x
    where x = 5

q2 = x * x
    where x = 5

q3 = x * y 
    where x = 5;
          y = 6

q4 = x + 3
     where x = 3;
           y = 1000

q5 = x * 3 + y
     where x = 3
           y = 1000

q6 = x * 5
     where y = 10
           x = 10 * 5 + y

q7 = z / x + y
     where x = 7
           y = negate x
           z = y * 10


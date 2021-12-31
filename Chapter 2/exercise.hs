-- exercise.hs

module Exercise where

{-
Parenthesization
Add brackets without changing the result
1. 2 + 2 * 3 - 1
2. (^) 10 $ 1 + 1
3. 2 ^ 2 * 4 ^ 5 + 1

1. 2 + (2 * 3) - 1
2. (^) 10 (1 + 1)
3. (2 ^ 2) * (4 ^ 5) + 1 
-}

{-
Equivalent expressions
Which of the following pairs of expressions will return the
same result when evaluated?

Q1. YES
1 + 1
2

Q2. YES
10 ^ 2
10 + 9 * 10

Q3. NO -> order matters
400 - 37
(-) 37 400

4. NO -> div for integers, '/' for fractions
100 `div` 3
100 / 3

5. NO -> '*' has higher priority
2 * 5 + 18
2 * (5 + 18)
-}

{-
More fun with functions

z = 7
x = y ^ 2
waxOn = x * 5
y = z + 8
ORDER DOESNT MATTER IN SOURCE FilE

z = 7
y = z + 8
x = y ^ 2
waxOn = x * 5
HOW IT HAS TO BE ENTERED IN REPL
-}

waxOn = x * 5
        where z = 7
              y = z + 8
              x = y ^ 2

triple x = x * 3

waxOff x = triple x

waxOff2 x = div (triple x) 10 
# Hello, Haskell

Setup environment to code with haskell using instructions at http://docs.haskellstack.org/en/stable/README/


#  Interacting with Haskell code
## Using the REPL

- REPL -> read-eval-print loop
- REPLs are interactive programming environments where you can input code, have it evaluated, and see the result.


- [x] REPL setup and functional

## Working from source files

- [x] Setup VS Studio code environment
- [x] Enter the following code into a sourceFile.hs file and successfully load it using REPL

```haskell
sayHello :: String -> IO ()
sayHello x =
  putStrLn ("Hello, " ++ x ++ "!")
```

#  Understanding expressions

- Everything in Haskell is an expression or declaration
- Expressions may be values, combinations of values, and/or functions applied to values
- Expressions are the building blocks of our programs, and programs themselves are one big expression made of smaller expressions.
- **Normal Form** - We say that expressions are in normal form when there are no more evaluation steps that can be taken

# Functions

- Similar to Math - they map an input or set of inputs to an output.
- A function is an expression that is applied to an argument and always returns a result.
- **ALWAYS** same result given same inputs/values.

Haskell functions, like lambda calculus, take one argument and return one result.

When it seems we are passing multiple arguments to a function, we are actually applying a series of nested functions. (Currying)

## Defining Functions

```haskell
triple x = x * 3
--[1] [2] [3] [4]
```

- [1] - **function declaration** - Name of the function we are defining.
- [2] - parameter of the function - head of the lambda - binds variables.
- [3] - "=" is used to define (or declare) values and functions.
- [4] -  body of the function, an expression that could be evaluated when applied.

**NOTE:** Capitalization matters! Function names start with **lowercase letters.**

- [x] Created source file called triple.hs to test code above.

# Evaluation

- reducing the terms until the expression reaches its simplest form.
- Haskell uses a nonstrict evaluation / "Lazy evaluation"
- Values are expressions, but cannot be reduced further.

The following expressions can be reduced to a value:
```haskell
1 + 1
2 * 3 + 1
```

**NOTE:** Haskell doesn’t evaluate everything to canonical or normal
form by default. Instead, it only evaluates to weak head normal
form (WHNF) by default. What this means is that not everything will get reduced to its irreducible form immediately.

# Exercise: Comprehension Check

1. Given the following lines of code as they might appear in a source file, how would you change them to use them directly in the REPL?
```haskell
half x = x / 2
square x = x * x
```
Answer: use the let function to declare them in that scope
```haskell
let half x = x / 2
let square x = x * x
```

2. Write one function that has one parameter and works for all the following expressions. Be sure to name the function.
```haskell
3.14 * (5 * 5)
3.14 * (10 * 10)
3.14 * (2 * 2)
3.14 * (4 * 4)
```

Answer:
```haskell
areaCircle x = 3.14 * (x * x)
```
3. There is a value in Prelude called pi. Rewrite your function to use pi instead of 3.14.

Answer:
```haskell
areaCircle x = pi * (x * x)
```

# Infix Operators

- By default we use **Prefix Syntax** , meaning that the function being applied is at the beginning of the expression rather than the middle.
- Example: The triple function we made above.
- There are a group of operators (i.e. arithmetic operators), that are functions but appear by default in an **infix position** (in the middle of values).

Operators are functions which can be used in infix style:
- All operators are functions
- Not all functions are operators

**NOTE:** You can sometimes use functions infix style, with a small change in syntax:
```haskell
Prelude> 10 `div` 4
2
Prelude> div 10 4
2
```
You can also use infix operators in prefix fashion by wrapping them in parentheses:
```haskell
Prelude> (+) 100 100
200
Prelude> (*) 768395 21356345
16410108716275
Prelude> (/) 123123 123
1001.0
```

Alphanumeric -> Default: prefix function, not all prefix functions can be made infix.

Symbol       -> Default: infix operator,  can be made prefix by wrapping it in parentheses.

## Associativity and precedence

We can ask GHCi for information such as associativity and precedence of operators and functions by using the :info command.

<img width="740" alt="Screen Shot 2021-12-29 at 3 21 02 PM" src="https://user-images.githubusercontent.com/96701698/147700457-c6e74f70-f1fe-4906-9bea-4e7b754dfd48.png">

<img width="756" alt="Screen Shot 2021-12-29 at 3 26 13 PM" src="https://user-images.githubusercontent.com/96701698/147700773-80ed735a-e3d5-4022-8f55-21524c34b376.png">

<img width="748" alt="Screen Shot 2021-12-29 at 3 26 56 PM" src="https://user-images.githubusercontent.com/96701698/147700818-e223679a-7788-4304-822b-9f455ff12af7.png">

<img width="746" alt="Screen Shot 2021-12-29 at 3 28 38 PM" src="https://user-images.githubusercontent.com/96701698/147700910-e741cbcb-9750-4caf-965c-5c19e7ca736e.png">

# Exercises: Parentheses and Association

Below are some pairs of functions that are alike except for
parenthesization. Read them carefully and decide if the parentheses change the results of the function.

1.  - 8 + 7 * 9
    - (8 + 7) * 9

2. - perimeter x y = (x * 2) + (y * 2)
   - perimeter x y = x * 2 + y * 2

3. - f x = x / 2 + 9
   - f x = x / (2 + 9)

# Declaring values

The order of declarations in a source code file doesn’t matter because GHCi loads the entire file at once, so it knows all the values that have been defined.

when you enter them one by one into the REPL, the order does matter.

- [x] Create file learn.hs
- [x] declare the name of our module so it can be imported by name in a project. **NB: Module name must be capitalized**

```haskell
-- learn.hs

module Learn where

x = 10 * 5 + y
myResult = x * 5
y = 10
-- The order doesn't matter in the source file
```

## Troubleshooting 

### Indentaion
- indentation of Haskell code is significant and can change the meaning of the code. ***USE SPACES NOT TABS*** 
- code that is part of an expression should be indented under the beginning of that expression, even when the beginning of the expression is not at the leftmost margin
- parts of the expression that are grouped should be indented to the same level.

Example:
```haskell
let
 x = 3
 y = 4
-- or
let x = 3
    y = 4
```

Notice that the terms x and y are indented the same.

It is incorrect to write:
```haskell
let x = 3
y = 4
-- or
let
x = 3
 y = 4
```

Situation 1:
```haskell
module Learn where
-- module declaration at the top
x = 10
* 5 + y
myResult = x * 5
y = 10
```

Problem: * causes parse error

Solution: declare x in one line OR indent rest of declaration past the =

```haskell
x = 10 * 5 + y
--or
x = 10
    * 5 + y
```

Situation 2: 
```haskell
module Learn where
-- module declaration at the top
 x = 10 * 5 + y
myResult = x * 5
y = 10
```

Problem: x not in line with other functions, either indent the other functions or remove indentation

# Exercise: Heal the sick

Fix the following code

```haskell
-- Q1
let area x = 3. 14 * (x * x)

-- error -> space in 3.14
let area x = 3.14 * (x * x)

--Q2
let double x = b * 2

-- error -> b not defined
let double x = x * 2

--Q3
x = 7
 y = 10
f = x + y

-- error -> declaration y was indented and couldnt be accessed by f
x = 7
y = 10
f = x + y
```
# Arithmetic Functions in Haskell

<img width="729" alt="Screen Shot 2021-12-30 at 2 53 45 PM" src="https://user-images.githubusercontent.com/96701698/147783971-8f06c127-4303-4776-949c-7b7e94fd78db.png">

## Using mod and rem

- mod gives the remainder of a modular division
- numbers “wrap around” upon reaching a certain value, called the modulus

#### Example: A clock 
- When we count time by a 12-hour clock, we have to wrap the counting around the 12. 
- In our 12-hour clock, 12 is equivalent to both itself and to 0, so the time at 12:00 is also, in some sense 0:00. Arithmetic modulo 12 means that 12 is both 12 and 0.

For example, if the time is now 8:00 and you want to know what time it will be 8 hours from now, you don’t simply add 8 + 8 and get a result of 16 o’clock. Instead, you wrap the count around every 12 hours. So, adding 8 hours to 8:00 means that we add 4 hours to get to the 12, and at the 12 we start over again as if it’s 0 and add the remaining 4 hours of our 8, for an answer of 4:00.

```haskell
Prelude> mod 16 12
4
```

- In most cases mod and rem will give the same result.

```haskell
Prelude> mod 16 12
4
Prelude> rem 16 12
4

Prelude> mod 21 12
9
Prelude> rem 21 12
9

Prelude> mod 3 12
3
Prelude> rem 3 12
3
```

**One key difference here is that, in Haskell (not in all languages), if one or both arguments are negative, the results of mod will have the same sign as the divisor, while the result of rem will have the same sign as the dividend.**

```haskell
Prelude> (-5) `mod` 2
1
Prelude> 5 `mod` (-2)
-1
Prelude> (-5) `mod` (-2)
-1

--But:

Prelude> (-5) `rem` 2
-1
Prelude> 5 `rem` (-2)
1
Prelude> (-5) `rem` (-2)
-1
```

## Negative Numbers

TLDR: the way operators work create a unique situation for negative numbers. Unlike in everyday math negative numbers cant be represented as they would in everyday situations.

An expression like :

```haskell
Prelude> 1000 + -9
<interactive>:3:1:
Precedence parsing error
cannot mix ‘+’ [infixl 6] and
prefix `-` [infixl 6]
in the same infix expression
```
would not work.

Instead we use a method like:

```haskell
Prelude> 1000 + (-9)
991

--OR

Prelude> 1000 + (negate 9)
991
```

# Parenthesization
## Parenthesizing infix operators

**Order matters**

```haskell
Prelude> (1/) 2
0.5
Prelude> (/1) 2
2.0
```
# Let and Where

- **let introduces an expression, so it can be used wherever you can have an expression.**
- **where is a declaration and is bound to a surrounding syntactic construct.**

- [x] Created file FunctionWithWhere.hs
- [x] Created file FunctionWithLet.hs

# Exercises: A Head Code

- [x] Created headCode.js 

# Chapter Exercise

- [x] Created Exercise.js




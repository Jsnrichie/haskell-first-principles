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


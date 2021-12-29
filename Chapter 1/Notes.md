# What is functional programming?

In Haskell, and in functional programming more generally, functions are first-class: they can be used as values or passed as arguments, or inputs, to yet more functions.

Functional programming languages are all based on the lambda calculus. 

# What is a function?

TLDR : many inputs can share the same output but one input should not have multiple outputs.

# The structure of lambda terms

3 parts:
expressions, variables, and abstractions

- **Expression** -> a superset of all those things. can be a variable name, an abstraction, or a combination of
those things. 

- **Variables** -> have no meaning or value; they are only names for potential inputs to functions.

- **Abstraction** -> a function; consists of a head(lambda) and a body separated by a dot - "."

<img width="626" alt="Screen Shot 2021-12-28 at 3 39 31 PM" src="https://user-images.githubusercontent.com/96701698/147608808-9610d52e-0b8b-4eda-a839-f194d1111ae2.png">


## Alpha Equivalence

<img width="854" alt="Screen Shot 2021-12-28 at 4 34 45 PM" src="https://user-images.githubusercontent.com/96701698/147608857-df911ed5-2400-45d6-a68a-4ababfaeb91a.png">


# Beta Reduction

process -> substitute the input expression for all instances of bound variables within the abstraction +  eliminate the head 

NOTE: Applications in the lambda calculus are left associative (*apply from left to right unless parathesis dictate otherwise*)

Example 1:

(λx.x)2

[x := 2]

2

Example 2:

(𝜆𝑥.𝑥)(𝜆𝑦.𝑦)

[𝑥 ∶= (𝜆𝑦.𝑦)]

𝜆𝑦.y

## Free variables
variables in the body that are not bound by the head. 

The purpose of the head of the function is to tell us which
variables to replace when we apply our function.

Example: In the expression

**-> (λx.xy)**

"y" is a free variable because there is no "λ" binding it, only the "x". 

# Multiple Arguments

Each lambda can only bind **one** parameter and can only accept
**one** argument. Functions that require multiple arguments
have multiple, nested heads.

<img width="855" alt="Screen Shot 2021-12-28 at 4 48 01 PM" src="https://user-images.githubusercontent.com/96701698/147609514-0d870c7b-b79e-4562-b3a5-0220b6a42ecb.png">

<img width="686" alt="Screen Shot 2021-12-28 at 4 52 05 PM" src="https://user-images.githubusercontent.com/96701698/147609883-52a52ecf-c753-4a6b-b82d-25926121bb79.png">

<img width="839" alt="Screen Shot 2021-12-28 at 4 54 50 PM" src="https://user-images.githubusercontent.com/96701698/147609931-5b337563-2296-488f-a419-0db22bbfd7db.png">
<img width="816" alt="Screen Shot 2021-12-28 at 4 55 02 PM" src="https://user-images.githubusercontent.com/96701698/147609943-6b897eef-6cbc-49fc-a60b-2be1533d863b.png">

# Combinators

A combinator is a lambda term with **no free variables.** they serve only to combine the arguments they are given.

<img width="855" alt="Screen Shot 2021-12-28 at 5 06 08 PM" src="https://user-images.githubusercontent.com/96701698/147610567-d7032d01-5d23-4d44-a5d9-ee8fc3e24e33.png">



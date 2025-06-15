---
title: Assignment 01 - TDD Kata
author: kleinen
weight: 10
draft: true
source: https://github.com/htw-imi-media-programming/kata-scaffold
---

In this assignment you work on a simple Coding Kata - FizzBuzz - to practice Test Driven Design.

Please work on this exercise in pairs. Both of you need to hand in the same report.

## Hand-In
You will hand in a written report in pdf format and a link to the source code repo. Make sure to keep a logbook with notes of anything that you observe to ease writing the report later.

## Assignment

You can do the kata in any programming language. Start with a project setup with a running xUnit-Test,
and a convenient way to automatically re-rerun the all tests after a code change. I find running
the tests in an extra shell window outside the ide most useful for that - see the `testloop.sh`
script in my python-kata scaffold:  {{< source  >}}

The Kata is described here: [https://codingdojo.org/kata/FizzBuzz/](https://codingdojo.org/kata/FizzBuzz/)

If you are new to automated testing, just do TDD. If you feel slightly bored, 
add the Baby Steps constraint: [https://kata-log.rocks/baby-steps](https://kata-log.rocks/baby-steps).

### Start with the Requirement for Stage 1:

*Write a program that prints the numbers from 1 to 100. But for multiples of three print “Fizz” instead of the number and for the multiples of five print “Buzz”. For numbers which are multiples of both three and five print “FizzBuzz “.*

Work Test Driven: Write a failing test, implement it in the most simple way, then refactor if necessary. Avoid unnecessary abstractions and generalizations, though. 

### Add Stage 2 Functionality: 

* A number is fizz if it is divisible by 3 or if it has a 3 in it
* A number is buzz if it is divisible by 5 or if it has a 5 in it

For example : 

* `53` should return `FizzBuzz` (1 Fizz: 3 is contained, 1 Buzz: 5 is contained)
* `35` should return `FizzBuzzBuzz` (1 Fizz: 3 contained, 2 Buzz: 5 divides and is contained)
* `51` should return `FizzBuzz` (1 Fizz: 3 divides, 1 Buzz: 5 is contained)
* `33` should return `FizzFizz` (2 Fizz: 3 divides and is contained)

Refactor as needed.

### Add new Requirements

We will define a new Requirement in Class (or, define one yourself). Write a Test. Implement it. Refactor.



# Resources

Fowler, M. (no date) Catalog of Refactorings. Available at: [https://refactoring.com/catalog/](https://refactoring.com/catalog/) (Accessed: 14 October 2024).

As the list of code smells is no longer available on Martin Fowler's page, 
here's a link to a page that plagiarizes his content (even without a single 
mention of the source!):
Code Smells (no date). Available at: [https://refactoring.guru/refactoring/smells](https://refactoring.guru/refactoring/smells) (Accessed: 14 October 2024).

RailsConf 2016 - Get a Whiff of This by Sandi Metz (2016). Available at: [https://www.youtube.com/watch?v=PJjHfa5yxlU](https://www.youtube.com/watch?v=PJjHfa5yxlU).


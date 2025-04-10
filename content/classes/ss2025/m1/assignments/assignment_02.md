---
title: Assignment 02 - Refactoring to Patterns Guided by Static Code Analysis
author: kleinen
weight: 20
draft: false
---

Please hand in this exercise in teams of three to four.
All of you need to hand in the same PDF report with clear indications of your individual contributions.


This exercise is about refactoring to patterns, guided from 
issues found by static code analysis tools.

For this, you need a software project (e.g.one that you've created during your previous studies, private project, work project) that meets the following criteria:

- it is probably in need of some code improvements / refactorings 
- static code analysers are not yet part of the build process (or at
  least not sufficiently)
- you have permission to work on it and share the code - at least the parts you've worked on - in class
- (optional) you want to put some work in it
- (optional) is written in a programming language that you want to practice more

If you cannot find such a project, talk to me:
-  The [Module Handbook](https://github.com/modulehandbook/modulehandbook) is a clear candidate. 
- There's an old discussion between Prof. Jung and me if clean code principles can be applied to the exercises in B13 Bildverarbeitung. I would love it if some of you gave it a try!

## Assignment


### 1. Systematic Selection of Static Code Analysers

1. Collect static code analysers for the programming language
   e.g. search for `static code analysis in python` 
2. select the sources carefully and make sure you reference them in your
   report.
3. compile a collection of possible options
4. compile a list of criteria for the evaluation of these options, e.g. 
   if the tool is open source, if it can be integrated in the build process, 
   user base, quality etc
5. choose 2-3 tools based on this evaluation, with a variety from pure   linters to tools that check for code smells.

### 2. Integration of Static Code Analysers

1. Integrate the Analysers one by one into your project and the build process.
3. Run them and make sure the tests are green - in a legacy project this may
   be a lot of work. Start by fixing some (easier, see below) issues for a few hours, and exclude enough to arrive at a green build.
4. choose 2-3 harder issues that point at issues that require a bigger refactoring
   including an improvement of the code design.
   For Example, issues with classes or methods that are to long (see for example [https://www.rubydoc.info/gems/rubocop/RuboCop/Cop/Metrics/CyclomaticComplexity](https://www.rubydoc.info/gems/rubocop/RuboCop/Cop/Metrics/CyclomaticComplexity))
   are usually a starting point for a refactoring, or [reek's nil check](https://github.com/troessner/reek/blob/master/docs/Nil-Check.md).

### 3. Refactoring

0. make sure you have sufficient tests for the code part you'll be working on
1. Refactor at least 2 issues you found. Tinker with the code, try out different  possibilities to arrange the code if appropriate.
2. make sure you read up on the principles, patterns and refactorings relevant for 
   your design improvement. Make sure that you review the [SOLID principles](https://www.youtube.com/watch?v=zHiWqnTWsn4)(the first part is about oo in general, solid starts at min. 52) if necessary.

### 4. Write Up

Include the reasoning for your project and analysers selection in your write up.
The main part should be about your insights applying the code analysers to your 
code base and the subsequent refactorings.  Make sure that you include 
references to the patterns, refactorings and principles that were relevant.


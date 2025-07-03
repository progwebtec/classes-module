---
title: Lab 07 - Testing & Lab 08 CI/CD
author: kleinen
draft: false
notoc: false
weight: 1070
source: https://github.com/htw-imi-wt1/lab-07-testing
---

Example source code for this lab: {{< source >}}
## Part 1 / Lab 07

Read through Chapter 8 (Testing).

1. set up jest. see the {{< source path="README-JEST.md">}} for my log and hints for the example project

1. create unit tests for your services (see "Testing the Middleware with Spies") - if
   you do not have services like in the example in your app, test another component
   that depends on mongoose using the Model/Mongoose Spies.

2. Add an End-to-End Test of the REST API. 

For the bored: Unit test your React-Components.
Include at least one snapshot test.

## Part 2 / Lab 08

(examples and further instructions will follow)
1. Create at least one system test including the automatic setup of a test database.
2. Build an automated test workflow into an gh action or gitlab CI/CD

For the bored: 
set up an automated deployment.

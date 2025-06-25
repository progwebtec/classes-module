---
title: Lab 06 - REST API
author: kleinen
draft: false
weight: 1060
---

In this lab you will build a REST api for your app and finally connect it to the database.

## Identify Resources

You will build an api in the Rest architectural pattern level 2 - using http, resources and http verbs.
(See [Fowler: Richardson Maturity Model](https://martinfowler.com/articles/richardsonMaturityModel.html) and the lecture slides).

Try to model your use cases as far as possible with CRUD operations on the appropriate resources.
If you decide to deviate from this style or expand it, discuss your decision in your report.

Here are the routes /endpoints that would be generated in a rails app for polls and answers as 
a hierarchical resource (poll has many answers, and each answer belongs to poll):



| Prefix           | Verb   | URI Pattern                                | Controller#Action |
|:---------------- |:------ | ------------------------------------------ | ----------------- |
| polls            | GET    | /polls(.:format)                           | polls#index       |
|                  | POST   | /polls(.:format)                           | polls#create      |
| new_poll         | GET    | /polls/new(.:format)                       | polls#new         |
| edit_poll        | GET    | /polls/:id/edit(.:format)                  | polls#edit        |
| poll             | GET    | /polls/:id(.:format)                       | polls#show        |
|                  | PATCH  | /polls/:id(.:format)                       | polls#update      |
|                  | PUT    | /polls/:id(.:format)                       | polls#update      |
|                  | DELETE | /polls/:id(.:format)                       | polls#destroy     |
| poll_answers     | GET    | /polls/:poll_id/answers(.:format)          | answers#index     |
|                  | POST   | /polls/:poll_id/answers(.:format)          | answers#create    |
| new_poll_answer  | GET    | /polls/:poll_id/answers/new(.:format)      | answers#new       |
| edit_poll_answer | GET    | /polls/:poll_id/answers/:id/edit(.:format) | answers#edit      |
| poll_answer      | GET    | /polls/:poll_id/answers/:id(.:format)      | answers#show      |
|                  | PATCH  | /polls/:poll_id/answers/:id(.:format)      | answers#update    |
|                  | PUT    | /polls/:poll_id/answers/:id(.:format)      | answers#update    |
|                  | DELETE | /polls/:poll_id/answers/:id(.:format)      | answers#destroy   |


## API Endpoints

Create API endpoints that support your main usecases about 2-3 use cases and about 3-4 endpoints are the minimum. You do not need to implement all crud operations on all your resources, but should include at least one reading and one writing/editing endpoint.

You do not need to end a React/HTML frontend, but can do so - it will be the bonus exercise.

## Use the database!

With the Schema and Mongoose Requests you've created in the last lab it should be easy to use the database to implement
the api. You may move any hard-coded data to seeds.

## Report

- Include a brief overview of the implemented use cases and the according endpoints.
- Log / write down what you did and what worked and what didn't work.






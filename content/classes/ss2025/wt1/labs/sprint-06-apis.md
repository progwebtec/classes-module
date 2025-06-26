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

Try to model your use cases as far as possible with CRUD operations on the appropriate resources,
to be able to create an api following the Rest Architectural style.
If you decide to deviate from this style or expand it, discuss your decision in your report.

These are - as an example - the routes /endpoints that would be generated in a rails app for polls and answers as 
a hierarchical resource (poll has many answers, and each answer belongs to poll):


#### Complete Rails Routes
(including routes for the new and edit form)
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



## Just the Restful Routes

| CRUD              | Verb   | URI Pattern                                | Controller#Action |
|:----------------- |:------ | ------------------------------------------ | ----------------- |
| Read (Collection) | GET    | /polls(.:format)                           | polls#index       |
| Create            | POST   | /polls(.:format)                           | polls#create      |
| Read              | GET    | /polls/:id(.:format)                       | polls#show        |
| Update            | PATCH  | /polls/:id(.:format)                       | polls#update      |
| Update            | PUT    | /polls/:id(.:format)                       | polls#update      |
| Delete            | DELETE | /polls/:id(.:format)                       | polls#destroy     |


## API Endpoints

Create API endpoints that support your main usecases about 2-3 use cases and about 3-4 endpoints are the minimum. You do not need to implement all crud operations on all your resources, but should include at least one reading and one writing/editing endpoint.

Test your api using [curl](https://curl.se/docs/) - some examples are in the book - or any other suitable tool.

You do not need to end a React/HTML frontend, but can start creating one - it will be the bonus exercise.

## Use the database!

With the Schema and Mongoose Requests you've created in the last lab it should be easy to use the database to implement
the api - remove all hard-coded data from your app and replace it with database queries. You might want to move your static data to seed files. Using seed files comes in especially handy if you start with with a use case that reads data rather than
writes in the database - but it's a good practice anyway as you don't loose time entering data 

## Report

- Include a brief overview of the implemented use cases and the according endpoints.
- Log / write down what you did and what worked and what didn't work.






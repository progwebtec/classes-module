---
title: Lab 05 - Persistence and Consistency
author: kleinen
draft: false
notoc: false
source: https://github.com/htw-imi-wt1/lab-05-persistence
weight: 1050
---

In this lab you will consider the persistency aspects of your app:
- which data model supports your use cases best?
- which database should you choose?
- based on your use cases, which are the requirements for consistency?
- last not least you will get some hands-on experience with Mongo and Mongoose.

This is a lot - material for 2 weeks.

## 1. Use Cases

All decisions regarding both your data/domain model as well as consistency requirements depend on your use cases. Create a story on how your application will be used - be creative, tell the story together and take notes. Don't shy away from complex ideas - you will not need to implement them!
Give your users a name (make sure to have one for each role if your app will be used by different roles) and be sure to describe in detail when, where, how and especially why your user
uses your application. Make sure to be clear on their intention, the goals they pursue.

For example, for my "poll app", the user stories "poll-creator can create a poll with yes/no questions", and "poll-participant can select answers" 
(which are a valid user story names) would result in very different requirements depending on
wether the poll is intended to be created during class and will be immediately answered by participants using their phones, as compared to a poll that is prepared in advance and conducted remotely.

Note: Neither User-Interface Design nor Requirements Engineering are topics of this class. The idea of story telling can be found in different methods, like [Domain Storytelling](https://domainstorytelling.org/) or [Visioning in Contextual Design](https://www.interaction-design.org/literature/book/the-encyclopedia-of-human-computer-interaction-2nd-ed/contextual-design?srsltid=AfmBOopuYm4so4B8ujCZE8SaSrtrTc436OZw39DRTbMXPEiNsQhmVk9q). If you learned specific methods in other classes, feel free to use (and name) them.


## 2. Your Model

Create or refine your domain model: 
- which data do you need to create the views for your use cases?
- will there be different views / frequencies for different operations/ use cases
  (i.e. more writes than reads, summarized views, ...)

For the core parts of your model, model them using
- Object Oriented Design - with classes
- a relational model (Tables in a relational Database)
- as a Mongo/Mongoose Schema: [https://mongoosejs.com/docs/models.html](https://mongoosejs.com/docs/models.html)

Which one suits your app best?

## 3. Consistency

If your app grew large and needed to be distributed among multiple servers around the world - what would be the requirements for consistency in your app?

Go through Chapter 7, Consistency and Replication, in [M. van Steen and A.S. Tanenbaum, Distributed Systems, 4th ed., distributed-systems.net, 2023. (Remember that you can download a personal copy for free!)](https://www.distributed-systems.net/index.php/books/ds4/) and discuss aspects that might be of concern for your app.

## 4. Database selection

In this class we'll use Mongoose, but to get some knowledge about Database options **and**
practice systematic research and well-founded decisions, choose the best database for your
project:
- compile a list of requirements for the database
- compile a list of databases to consider (about 4 options - you may want to compare very different types - eg. sqlite vs Mongo - or more similar ones)
This results in a matrix. Fill it to systematically choose a database.
Was the result the one you've expected? Make sure to cite your sources!

## 5. Practical Application: Mongo & Mongoose

Set up and seed a Mongo Database for your Project: (you may want to do this in your app repo).

- create a compose.yml to run Mongo in a local docker container
- create a seed file
- install a tool for exploring the data(base), e.g. [DataGrip](https://www.jetbrains.com/datagrip)
- ... and explore the database!
- write simple js scripts to explore [Mongoose](https://mongoosejs.com/docs/) and prepare the
database queries you'll need for your app.
- you can use  {{< source >}} as example/scaffold. 

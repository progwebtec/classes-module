---
title: Lab 03 - Pages in Express and Handlebars
author: kleinen
draft: true
weight: 1030
source: https://github.com/htw-imi-wt1/lab-03-express-first-pages
---

Repo for this lab: {{<source >}}

This lab is about designing the first two pages for your app and
populating them with data using the template engine handlebars.

## Assignment
Consult the example below and the linked docs to solve the exercises.

Use your dockerized app from last week as base for this week's express assignments. If you had trouble installing docker last week, give an update in this week's report. 

### 1. Stories and Interface Design

1. Choose about one or two stories of your project backlog. They should contain some functionality that shows your main resource.

2. Draw a rough interface sketch together. One page per person is sufficient. If you would need more pages to implement your stories, reduce or split your stories. You can always add more later.
3. Each one of you should take care of one of the pages. Note who did which page in your report.

### 2. Static HTML Pages

Create static (plain) HTML pages and make them available using express static. (see [Serving static files in Express](https://expressjs.com/en/starter/static-files.html) and the example app). 

### 3. Try out Handlebars

Find something where you repeatedly need the same data in different formats. You can use any template engine to solve that! The repo contains
an example where I generate various Project Lists for the Showtime using handlebars - see {{<source path = "handlebars-example/" >}}  
https://handlebarsjs.com/guide


## 4. Integrate Handlebars into your Express App and fill the Pages with example data

Use your app from last week and 

Copying the structure of the handlebar-express example apps (see the readme: {{<source path = "README.MD" >}})
create two routes for your 

## Example App: "My Poll"
As an example, here's a simple My Poll App. It should provide polls that can easily be created, started and evaluated in group settings.
### 1. "My Poll": Stories and a Rough Interface Design
#### "My Poll" User Stories:

- As a Facilitator, I can create a new poll by entering a question that can be answered with yes or no.
- As a Facilitator, I can start a poll. 
- As a Participant, I can open the poll on my device (phone, laptop) and answer the question
- As a Facilitator, I can see the poll results after closing the poll.

Note that I've kept this stories very simple. For instance, only polls with yes/no answers are possible. Also, there is no (need of) automatic updating of the result page as the results should only be shown after the poll is closed. These things can always be added in a later iteration.

#### Rough Interface Sketch:

I started drafting out the poll creation - see sketch 1.

--- sketch 1

This made me realize that this would result in 5 pages (and routes). Thus I revised my plan and reduced it to this two stories:

- As a Facilitator, I can see the results of a poll.
- As a Facilitator, I can see a list of my past polls, which links to the individual poll results.

I've added the second story to include an example for an iteration in the template (showing a collection of something)

--- sketch 2





#### Lab Report

- Your group number and project name
- The names of all team members
- the url of your repo (for the report to be complete for further reference)
- your updated/consolidated project proposal with a the current list of user stories
- The stories you've implemented in this sprint 
- the interface sketches
- the mapping of team member to pages
- at least the static page as well as the handlebar template for this page has to be commited by the respective team member.
- A reflection on any technical issues that you have encountered and how you resolved them (or not)

- submit it as .pdf to Moodle with the filename in the form of _group\_\<number\>\_\<project-topic\>\_lab_03.pdf_ e.g. _group\_42_repolist\_lab_03.pdf_ 
- every group member must upload the same report file.

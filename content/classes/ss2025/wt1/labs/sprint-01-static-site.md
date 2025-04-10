---
title: Lab 01 - Project Ideas, Dev Environment Setup, Building a Static Web Site
author: kleinen
draft: false
---

## 1. Project Ideas

You will be working on one project throughout the term in a small, 3-5 person team.
Collect and discuss your project ideas with other students. Project Teams will be 
consolidated in the next lab.

Write up a short project proposal for discussion in the next lab meeting, possibly together with other students. Develop some user stories for the product backlog. After this discussion we will decide on the different projects and the associated teams for the remainder of this class.

Don't worry about writing too many stories, or too complex ones. You don't need to implement all of them -
and it will be easier if you have enough stories to choose from for the sprints. You order your backlog by business value now; but you will pick stories that can be implemented with the technologies we learn(ed) during the week for each sprint.

The scope of the user stories should cover the following technical topics:

* one or more model class can be created, read, updated and deleted
* a user model with user authentication is implemented
* some form of real-time communication is supported (e.g. a chat or notification service)
* a REST API is available to retrieve data in a JSON format

Try to sketch something that has these elements in it. It's ok if your idea is more complex - you will not need to implement all aspects that you describe now.

## 2. Set up your development environment

During the first week, you will hand in your work individually, but are free to help each other.
The goal is to set up your development environment, get a github account and set up a static github page.

Follow the [Setting up a Node development environment](https://developer.mozilla.org/en-US/docs/Learn_web_development/Extensions/Server-side/Express_Nodejs/development_environment) Tutorial on the MDN Web Docs.

## 3. Create a github page

Follow the simple guide to publish a hello-world page using github pages:
[https://pages.github.com/](https://pages.github.com/)

Note that this includes obtaining a github account, using git locally, creating an ssh key pair and uploading it to github (see [Adding a new SSH key to your GitHub account](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account)).

Your github account name can be anything. You might want to use a pseudonym or nick name if you do not want to publish your exercises under your real name.

If you do not want to use github for any reason, you may use a similar service which 
hosts public git repos and deploys publicly available web sites using a ci/cd pipeline (aka github action) - GitLab and [GitLab Pages](https://docs.gitlab.com/user/project/pages/) may be an option.
But you will be on your own there, as I do not (yet) know them well enough.

If you want, you can use this static html site to visualize your project idea.

## What to hand in
{{<alert>}}This first lab will not be graded, but is by itself a "undifferenzierte Teilmodulprüfung" 
and successful individual submission of this lab is required to participate in the Labs and in the Exam!{{</alert>}}

1. Provide your github user name, the repo name and the url of the published github page via the feedback action in moodle.
2. Submit a brief Lab report including
    - your name 
    - a brief summary of your individual dev env setup (operating system, commands/versions you used,  issues and their solutions)
    - your project proposal. If you wrote this together with others, clearly state this and all your names on the project proposals.
3. This lab report has to be in pdf format with the file name "_Lastname\_Firstname\_Sprint01.pdf_"

---
title: Lab 02 - Simple Express App & Setting up Docker
author: kleinen
draft: false
notoc: false
source: https://github.com/htw-imi-wt1/lab-02-express-docker
weight: 1020
---

We will form the Project groups in this second lab. 
This lab is - apart from the naming - not specific to your chosen theme,
but has to be done in groups of 3-4 students nonetheless.

## Group Numbering

Use the [Grouptool in Moodle](https://moodle.htw-berlin.de/mod/grouptool/view.php?id=1947815) to register for a group.
This is solely to issue unique group numbers for the project teams.

## Textbook

We will use this textbook for the app development in the labs:
[https://nostarch.com/complete-developer](https://nostarch.com/complete-developer)
- all chapter notions refer to this book.

## 1. Projekt proposal

Decide on a project and consolidate your project proposal(s).

## 2. Create a simple express app
See chapter 01 for detailed instructions, which is mostly on node, but has a brief section about the example app at the end.

Give your app, the services and container names related to your project.

### a. Create the app
Create a simple express app as described in the {{< source path = "sample-express/README.MD" >}}
in my example in {{< source path = "sample-express" >}}

### b. Add a route

1. What happens if you open [http://localhost:3001/](http://localhost:3001/)?
2. Why?
3. Fix this - it should show some text and a link to the /hello site instead of an error.

## 3.  Install Docker and use it to run the app
### a. Install Docker locally

See installation instructions for [MacOS](https://docs.docker.com/desktop/setup/install/mac-install/), [Windows](https://docs.docker.com/desktop/setup/install/windows-install/) and [Linux](https://docs.docker.com/desktop/setup/install/linux/).

### b. Single Container

Add a Dockerfile as described in Chapter 10 (with slight modifications, see {{< source path = "sample-docker/Dockerfile" >}}), build the image and start the server in a container using the image.
See {{< source path = "sample-docker/README.MD" >}} for instructions on the example in {{< source path = "sample-docker/" >}}.

### c. Add NGINX with compose.yml

As the first example of multiple services, add an nginx-server to the configuration using docker compose. 
Simply copy the compose.yml in
{{< source path = "sample-docker/compose.yml" >}}
(the example in Chapter 10 of the book combines the container running the express app with one running the test suite, thus differs in the services containes in the compose.yml!)
The NGINX will also later handle ssl (secure socket layer), in this example the ssl parts are commented out.

### d. Add a folder for static html files

NGINX is used as a reverse proxy (proxy on the server side instead of the client side, improves security among other things) above, 
but it's first purpose is to serve static files.

Add a public_html folder to your project, and map it to a subpath using the nginx config such that all static html files in public_html are accessible via [http://localhost/doc](http://localhost/doc). You need to edit {{< source path = "sample-docker/nginx/templates/default.conf.template" >}} and the mounts in {{< source path = "sample-docker/compose.yml" >}}

### e. For the bored: add sll with self-signed certificates

Add the ssl configuration from the (currently not used)
{{< source path = "sample-docker/nginx/templates/default.conf.ssl.template" >}}, uncomment the environment variables in compose.yml
and create self-signed certificates.
If all is put together correctly, the https url should work: [https://localhost/hello](https://localhost/hello)
and http should redirect to https.

## Report / What to hand in

Create a github repository for your source code and provide the url from which I can clone the repo from (either via public repo or by
granting me the necessary access permissions. My github user name is bkleinen.)

Write up a brief report containing:

- Your group number and project name
- The names of all team members
- the url of your repo (for the report to be complete for further reference)
- your updated/consolidated project proposal with a fair list of user stories
- for the technical part:
    - a brief summary of what you did (this may also be in the readme.md in the repo)
    - A reflection on any technical issues that you have encountered and how you resolved them (or not)
- submit it as .pdf to Moodle with the filename in the form of _group\_\<number\>\_\<project-topic\>\_lab_02.pdf_ e.g. _group\_42_repolist\_lab_02.pdf_ 
- every group member must upload the same report file.


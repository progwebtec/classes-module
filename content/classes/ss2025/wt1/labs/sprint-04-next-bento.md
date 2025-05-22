---
title: Lab 04 - Next.js and Bento Boxes
author: kleinen
draft: false
notoc: false
#source: https://github.com/htw-imi-wt1/lab-02-express-docker
weight: 1020
---


Continue in the same 3-4 person group.

## Group Numbering

Use your group number from the last lab. If you need a new number for some reason (usually team reconfigurations), talk to me.

## Textbook

We will use this textbook for the app development in the labs:
[https://nostarch.com/complete-developer](https://nostarch.com/complete-developer)
- all chapter notions refer to this book.

## 1. Bento Box I

Collect at least 15 Web-App related Technologies, Acronyms, Buzz Words etc - (browser, client, server, html, css, http(s) do *not* count!) and try to 
- describe what they do in one sentence
- categorize them in a way that makes sense to you

## 2. Next Chapter(s)

If you haven't already done so, read through the Next Chapter (Chapter 05) and Page 196 in Chapter 12 (Configuring Next.js to Use Absolute Imports).
Collect all technical terms, protocols, file formats etc. for Bento Box II.

## 3. Bento Box II

Create a "Bento Box" for all Next.js - related Terms. You can reuse your Bento Box I, but do only include things that are relevant for your Next.js app.

## 4. Migrate your App to Next.js

Follow Chapter 5 and migrate your existing App from Express to Next.js.

## 5. Start Next.js in Docker

Following Chapter 11 (with possible Reference to Chapter 10), run Next.js in Docker or update your docker configuration to run your migrated App (should be the same thing).

This may work quickly, or, as often the case with docker, you may run into time-consuming deadends. If the latter is the case, set yourself a time limit
and stop at that point, and hand in what you have, with a record of what you tried and which errors you encountered.

(if this documents a real try, no points will be deducted if it didn't work out)


## Report / What to hand in

Create a github repository for your source code and provide the url from which I can clone the repo from (either via public repo or by
granting me the necessary access permissions. My github user name is bkleinen.)

- ***fill out the moodle feedback to provide your group number, name and repo url***
- ***tag the final version for this lab with the tag LAB_04***

I will use the commands below to get your sourcecode, and nothing else. So test them in a tmp folder!

```bash
git clone <provided-url> <group-name>
cd <group-name>
git checkout LAB_04
```


### Write up a brief report containing:

- Your group number and project name
- The names of all team members
- the url of your repo (for the report to be complete for further reference)
- your updated/consolidated project proposal with a fair list of user stories
- for the technical part:
    - a brief summary of what you did (this may also be in the readme.md in the repo)
    - A reflection on any technical issues that you have encountered and how you resolved them (or not)
- submit it as .pdf to Moodle with the filename in the form of _group\_\<number\>\_\<project-topic\>\_lab_04.pdf_ e.g. _group\_42_repolist\_lab_04.pdf_ 
- every group member must upload the same report file.


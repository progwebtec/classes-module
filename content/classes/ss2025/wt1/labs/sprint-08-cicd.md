---
title: Lab 08 - CI/CD
author: kleinen
draft: false
notoc: false
weight: 1070
# source: https://github.com/htw-imi-wt1/lab-07-testing
source: https://github.com/bkleinen/next
---



Example source code for this lab: {{< source >}}


## Continuous Integration / GitHub Action
Build an automated test workflow into an gh action or gitlab CI/CD

The example below uses github actions. you can do the same with other continuous integration tools/services, e.g. Gitlab.
Feel free to use them instead of github actions.

### Set up a Github Action

To run automated tests on github after each push to main (or any other specific or all branches), you need to 
- enable github actions in the repo settings (in Settings->Actions->General select "Allow all actions and reusable workflows" or "Allow <user> actions and reusable workflows")
- create a workflow file that runs the tests.

### Example

**{{< source path = ".github/workflows/ci.yml" >}}** (taken from [actions/run-jest](https://github.com/marketplace/actions/run-jest))

### About Github Workflows and Actions

Github Workflows are defined in yaml files and consist of one ore more jobs, which contain one or more steps.

These steps are often so called 'actions' - which are a kind of libraries implementing common things, like e.g.
the checkout action "[actions/checkout](https://github.com/actions/checkout)" which checks out the repo:

```yml
    steps:
    - uses: actions/checkout@v4
```

the action name always corresponds to a github repository. The organisation [https://github.com/actions](https://github.com/actions) contains the actions provided by github themselves. You can publish your own action the same way.

Another usual type of step are shell commands, as in the other two steps of the example:
```yml
    - name: Install modules
      run: npm install
```

#### Further reading

- [Quickstart for GitHub Actions](https://docs.github.com/en/actions/get-started/quickstart)
- [Workflow syntax for GitHub Actions](https://docs.github.com/en/actions/reference/workflow-syntax-for-github-actions)


## Create at least one system test including the automatic setup of a test database.

In the last lab, we used mocks to replace the data consistency layer - mongo and mongoose - with mocks for testing. This allows to unit test components that depend on this layer.

For system or acceptance test, which test the whole stack or system, you would also use the mongoose and mongo libraries. For this to work, you need some sort of test database. This can be
either a specific test database on your mongo instance or a database in a simpler and faster DB Implementation, like the MongoMemoryServer or Sqlite for relational databasees. Using the MongoMemoryServer also removes the need for any db setup e.g. in the github action.

Usually, you will have some sort of dev database for manual tests or demos (the production database isn't usually on your development machine). You do not want to use this for testing, 
as it doesn't provide the same state everytime (e.g. if you entered some data manually or via a seed.)

Thus, as you need a test fixture that guarantees a fixed state in your database for each test, you do not want to reuse the dev database. As the tests should be able to run independently from each other and also in random order, you need to ensure that you have a defined set of objects
in your database for each test. To achieve this, you use jest's before* and after* hooks - either for each test with beforeEach/afterEach or for a suite of tests with beforeAll/afterAll. See 
[https://jestjs.io/docs/setup-teardown#scoping](https://jestjs.io/docs/setup-teardown#scoping) for the scope of beforeAll/afterAll.

- for tests against a "real" mongo instance: https://jestjs.io/docs/mongodb

```bash
npm install --save-dev @shelf/jest-mongodb
```

add this to ts config:
```
"preset": "@shelf/jest-mongodb",
```

see [this commit](https://github.com/htw-imi-wt1/lab-07-testing/commit/f8d8028e21bd17d2c3dca05ae2668ccea1c0b869) for all changes.

### Links
- https://jestjs.io/docs/mongodb
- https://mongoosejs.com/docs/jest.html


## Build a Pipeline

If you do not add a deployment job, create at least one separate job
that 'needs' (depends on) another job to see a build pipeline on github. See the systemtest job in the example workflow (which serves only demonstration purposes as this test is included in the other test suite as well).

See the check project update workflow for the Showtime Website for a more elaborate example:
[https://github.com/htw-imi-showtime/showtime-website/actions/workflows/check-project-update.yml](https://github.com/htw-imi-showtime/showtime-website/actions/workflows/check-project-update.yml)

 
## For the bored: set up an automated deployment.

find a platform to deploy your app to (e.g. vercel) and add a deploy job to your github action to deploy it automatically after all tests pass.

# GitHub Workflow Activity

##  Form teams

Form teams of 2-3 persons (no more than three!!!)


Rank the team members based on your experience with git and Github:
- 1 - least experienced
- 2 - some experience
- 3 - confident user

Ensure that each of your team members ...

    - [ ] Has git installed on their laptop.
    - [ ] Is logged into their GitHub account on their computer.


## Create a repository

__Assumptions__

* You are signed into GitHub.
* You have access to an organization.
* You are viewing your organization on GitHub.

__On GitHub__

Assign the role of __maintainer__ to one of the group members: this should be the a person with some git experience (someone with ranking of 2 or 3 above).

1. Click the __Repository__ tab to view the repositories of the course organization.
1. Click the big green __Create a new repository__ button. (If you already have a repository in this organization, click the green __New__ button.)
2. Name the repository `TEAM_NAME-workflow` (where TEAM_NAME is replaced with your chosen name).
3. Optionally add a description.
4. Make it public.
5. Initialize it with a README.
6. Optionally add a .gitignore (not necessary for this activity).
7. Add an open source license (unless you have a strong opinion, for now choose __GNU Public License v3.0__).
8. Click the big green __Create repository__ button



Congratulations! You have created your team's first repository.

__Report__

In the README file in this repository list couple of things that
you learned when completing the above steps and/or description of
problems you encountered.

__Check in with your facilitator before continuing.__



## Prepare to contribute to a project


Assign the role of __contributor__ to one person: this should be the person with the least git experience.


### Fork the upstream repository

1. Click __Fork__ in the upper-right corner.
2. If you are a member of one or more organizations, select your personal account to receive the fork.
3. You should be viewing your personal fork of the team's repository on GitHub.

Congratulations, you have forked a personal copy of the team's repository!

### Clone your fork

__Assumptions__

* You have git installed and configured on your machine.
* You are viewing your personal fork of the team's repository on GitHub.
* Your team's repository is named `TEAM_NAME-workflow`.

__Instructions__

1. In the browser, click the green __Clone or Download__ button.
2. If "HTTPS" is not selected, click __Use HTTPS__.
3. Click the clipboard to copy the URL in the box to your clipboard.
4. In the terminal, clone the repository. URL is in your clipboard from step 3.
    ```
    git clone URL
    ```
5. Change into the root of your cloned repository.
    ```
    cd TEAM_NAME-workflow
    ```

Congratulations, you have cloned your fork to your local machine!

### Add an upstream remote


1. In the browser, navigate to your team's repository (not the fork!).
2. Click the green __Clone or Download__ button.
3. If "HTTPS" is not selected, click __Use HTTPS__.
4. Click the clipboard to copy the URL in the box to your clipboard.
5. In the terminal add a named URL (called a remote) to your clone that points to the team's repository, which we'll call `upstream` (the name can be anything you wish, but the remaining instructions
refer to `upstream`).
    ```
    git remote add upstream URL
    ```
6. Run the following and confirm that your local has two remotes (but four lines): `origin` that points to your fork of the team's repository, and `upstream` that points to your team's repository.
    ```
    git remote -v
    ```
    You should see something like this (with YOUR_ACCOUNT and TEAM_ORGANIZATION replaced with actual values).
    ```
    $ git remote -v
    origin    https://github.com/YOUR_ACCOUNT/TEAM_NAME-workflow.git (fetch)
    origin    https://github.com/YOUR_ACCOUNT/TEAM_NAME-workflow.git (push)
    upstream  https://github.com/CLASS_ORGANIZATION/TEAM_NAME-workflow.git (fetch)
    upstream  https://github.com/CLASS_ORGANIZATION/TEAM_NAME-workflow.git (push)
    ```
Congratulations, your local clone now knows where to find the upstream repository (i.e., your team's repository).





__Report__

In the README file in this repository list couple of things that
you learned when completing the above steps and/or description of
problems you encountered.

__Check in with your facilitator before continuing.__




## Everybody prepare to contribute to a project

The other team members should perform the above steps to setup their own forks and clones on their local machines. You should work on this _in parallel_ if you have a team of three.

## Creating issues

The issue tracker is used to keep track of bugs (problems that need fixing), feature requests,
suggestions and sometimes clarification questions from people using the project.

Your team should create three issues in this step. Divide the issues so that each group member
creates at least one of the issues.

1. Navigate to your team's repository on GitHub (_not_ your fork).
2. Click the __Issues__ tab.
3. Click the big green __New issue__ button.
4. Enter the title and a description of this issue.
    The issues reported for this step have to do with missing files that should contain
    some information about the team. Each issue should state the name of the missing file
    and describe its content.
      - `best_classes.txt` - should be a list of the best classes that each team member took
        while in NYU (you can make it up)
      - `dream_job.txt` - should contain, for each team member, a description of your dream job
        for after graduation (optionally you can list names of the company as well)
      - `best_food.txt` - should contain a list of the team members' favorite food places
        on campus



__Report__

In the README file in this repository list couple of things that
you learned when completing the above steps and/or description of
problems you encountered.

__Check in with your facilitator before continuing.__





## Contributing to a project

1. Your team's goal is to have the _contributor_ fix one of the existing issues. __It should be the issue about
the best NYU classes.__ <br>
    Follow the __[Contribution Workflow](contribution-workflow.md)__ to accomplish this goal.
    <br><br>
    __Report__<br>
    In the README file in this repository list couple of things that
    you learned when completing the above steps and/or description of
    problems you encountered.
    <br>
    __Check in with your facilitator before continuing.__



2. This time, everyone is a _contributor_ and a _maintainer_. However, you cannot serve as a _maintainer_ for you own PR.  Follow the __Contribution Workflow__ in parallel to accomplish the following:
      - fix the remaining two issues (in groups of three, the person who already fixed an issue should work along
        side with the other two members)
      - the people acting as maintainers should not accept these pull requests right away - they should request some
        revisions (e.x., no chain stores like Starbucks are allowed in the favorite food places list)
      - (after the above issues are fixed) report a couple of new issue (this should be done by the least 
        experienced git user):
                - all three files should be in alphabetical order
                - all three files should contain names of the team members next to their entries


    __Report__

    In the README file in this repository list couple of things that
    you learned when completing the above steps and/or description of
    problems you encountered.

    __Check in with your facilitator before continuing.__



3. Again, everyone plays the roles of a _contributor_ and a _maintainer_, but never serves as a _maintainer_ for their own PR.
    <br>
     Fix the two latest issues in parallel (done by the least experienced users in the groups of three). 
     The submission of   pull requests for these two issues should result in a merge conflict 
     (since both issues require you to modify the same files).
    Follow the __[Contribution Workflow](contribution-workflow.md)__ to accomplish this goal.
    <br><br>
    __Report__
    <br>
    In the README file in this repository list couple of things that
    you learned when completing the above steps and/or description of
    problems you encountered.
    <br>
    __Check in with your facilitator before continuing.__

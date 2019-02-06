# Contribution Workflow

## Prepare to work on an issue

In this section you will complete three tasks: find or create and claim an issue, create a feature branch, and open a pull-request back to upstream. All of this you will do before actually working on the feature. Let's quickly discuss why you are doing these tasks before you do them.

__Finding or creating and issue__ and then claiming it helps prevent developers from working on the same thing at the same time. Also issue provide a place for the community to propose ideas, prioritize issues, size issues, clarify requirements, and verify bugs. So although this step may feel artificial during the activity, it's important to get in the habit of interacting with the community through the issue tracker before doing a significant amount of work.

A __branch__ as a personal copy of the project within a repository. You will create a branch for every issue you work on. This will allow you to work on more than one feature at the same time, allowing you to quickly switch between them, while keeping their changes separate until you are ready to merge them. This applies to the master branch as well. The master branch contains the official, current copy of the project. Using feature branches allows master to evolve while you work on your features without interfering with your development; and then, when you are ready, you can update your efforts with changes from master. Again, in this activity you might feel branches are artificial and useless. However, when you are working on more significant issues and with more developers branches become invaluable. So we want to practice the full workflow with these more simplistic tasks so that we know what we are doing when things get more complicated.

Once you complete your feature or issue fixes, you will need to ask the maintainers to accept your __pull request__.
Different projects have their own guidance on when and how a pull request should be opened. ALWAYS read those guidance before you attempt to contribute to the project.
In this exercise, we will follow the convention described below:

You will open an empty pull-request back to the organization's repository (upstream) as soon as (or even before) you start working on the issue. Pull-requests provide a place for developers to discuss their solution design and implementation. By opening a pull-request immediately, you make your efforts visible from the very beginning, allowing others to track progress and provide useful feedback. Getting feedback early may help you avoid pitfalls and will more likely lead to an acceptable solution sooner and with less effort than if you wait until you are "done" to get feedback.

### Find or create, and claim an issue

1. Navigate to your team's repository on GitHub (_not_ your fork).
2. Click the __Issues__ tab.
3. Search to see if there is an existing issue for what you want to do.
4. If no reasonable issue exists for what you want to do, create one.
5. If someone is assigned to the ticket or has claimed it by leaving a comment that they are working on it, move on, or maybe leave a comment asking about the progress and express interest in working on the issue.
6. If no-one is working on the issue assign yourself to the ticket (or leave a comment that you are working on it).


Congratulations, you now have a claimed issue for the work you plan to do.

### Create a feature branch and a pull request (PR) for your work

1. You are going to create a new branch to hold your work. New branches should always be branched from master. So first ensure that the master branch is checked out.
    ```
    git checkout master
    ```
2. Also you should always make sure that you start your branch based on the most recent copy of master. So let's pull changes from upstream (your team's repository on GitHub). In this activity, there shouldn't be any new changes in upstream, but this is a good habit to get into. So let's practice. At the same time, let's make sure your fork has those changes too.
    ```
    git pull upstream master
    git push origin master
    ```
2. Create the feature branch for the issue. Name it something short but meaningful and relevant to the issue. Replace BRANCH_NAME in the command below with your chosen name.
    ```
    git branch BRANCH_NAME
    ```
3. Checkout the branch you just created. Checking out a branch makes it the active branch so that any new commits you make will be added to this branch.
    ```
    git checkout BRANCH_NAME
    ```
4. Create an empty commit so that you can immediately issue a pull-request in the steps below. (Alternatively you could make a small change, stage it, and commit it. For now, just create an empty commit.)
    ```
    git commit --allow-empty -m "Start BRANCH_NAME"
    ```
5. Push your new branch containing the empty commit to your fork. Recall that your clone has a remote named `origin` that points to your fork. At the same time, use `-u` to tell git to track this remote branch with the local branch with the same name. Basically you are telling git that the new remote and local branches mean the same thing. You only use `-u` when you first create and push a branch.
    ```
    git push -u origin BRANCH_NAME
    ```
6. On GitHub, navigate to _your fork_.

7. Open a PR by either clicking
    * __New pull request__ (subtle grey button in the middle) and then the __compare across forks__ link.
    or
    * __Compare & pull request__ (big green button on the right)

8. Make sure that
    * __base fork__ is set to your team's repository under the organization
    * __base__ is set to master
    * __head fork__ is set to your fork of the team's repository
    * __compare branch__ is set to your feature branch (e.g., BRANCH_NAME)

9. Click the __Create pull request__ button.

10. Briefly describe what you plan to do, and mention the issue that this PR is addressing. Mention the issue by putting its issue number in the body using this format: `Starting to work on #i`, or `Fixes #i`, or `Closes #i` where `i` is the issue number. When GitHub sees this, it cross-references the issue and the PR allowing folks to easily get from one to the other. Also, when the PR is merged into master, it will close all issues with mentions of `Closes #i`!

11. Click __Create pull request__.

Congratulations! You have created a feature branch to hold the changes you will make while working on the issue. You have also opened a PR for this feature branch back to the upstream repository. This will allow others to follow your progress as you work. Also, the PR is a place where developers can discuss designs and implementations for solutions to issues.


## Work on the issue

1. Make a small change to the files in your local clone that gets you closer to accomplishing one of your goals (see the activity instructions to remind yourself of what your goals are in this scenario). Use any tools you would normally use to work on a project: e.g., editors such as Atom.io or Notepad++, development environments such as Eclipse, etc.

2. Test the change to make sure it works. In the activity this probably means reopening the file or files and making sure they have the correct changes. In a real project this means writing and running unit tests, running all the automated tests, manually running the code to see if it still works, running style checkers, etc.

3. Stage your changes.
    ```
    git add .
    ```

4. Confirm that only files that should be committed are staged.
    ```
    git status
    ```

5. If there are files staged that shouldn't be (e.g., anything that can be generated from source, personal/private configurations or data, etc.) complete [Unstage changes](unstage-changes.md). When you are done, return here and continue.

6. Commit changes and provide a good commit message.
    ```
    git commit
    ```

7. Push your changes that are in FEATURE_BRANCH to your fork.
    ```
    git push origin FEATURE_BRANCH
    ```

Congratulations, you have made a change, committed it to your feature branch, and pushed it up to your fork, which automatically updates the PR associated with your feature branch!

- If you are not done working on the issue, return to [Work on the issue](#work-on-the-issue) above.
- If you give up, close the PR on GitHub and then go to [Clean up](#clean-up) below.
- If you think your work is ready to be upstreamed, continue to the next section.


## Collaborate to upstream your work

### Update your PR with changes in upstream

1. Synchronize master branch with the upstream and update your fork
    ```
    git checkout master
    git pull upstream master
    git push origin master
    ```

2. Merge changes from master into your feature branch.
    ```
    git checkout FEATURE_BRANCH
    git merge master
    ```

3. If there are conflicts, follow GitHub's instructions for [Resolving a merge conflict using the command-line](https://help.github.com/articles/resolving-a-merge-conflict-using-the-command-line/). Be sure to test your changes before committing them. Return here when you are done.

4. Test the merged copy. If there are any problems, return to [Work on the issue](#work-on-the-issue) above and continue from there.

5. Update your fork and the PR
    ```
    git push origin FEATURE_BRANCH
    ```

Congratulations, your PR is now up-to-date with the latest changes from upstream. Time to request a review.


### Request a review

1. Navigate to your PR on the team's repository on GitHub.
2. Make a comment. In that comment at-mention one of your team-members who will play the role of _maintainer_ (e.g., `@person`), and ask them to please review your work.

3. Click __comment__ (___do not click___ "close and comment").

 Closing a PR means that it no longer needs to be merged into upstream. As a _contributor_, you would only do this if you are giving up on your effort. More often a PR is closed by the _maintainer_ either when they merge the PR into master or if they decide the PR should never be merged into master (i.e., the PR is no longer relevant, the PR is outside the scope of the project, the PR has been abandoned, etc.).


### Maintainer reviews the PR


1. Navigate to the PR that needs reviewing on GitHub.

2. Review the changes and make sure they are up to the project's standards. Many projects have style guidelines and acceptance criteria such as "must pass all tests" and "contributions must include unit tests". __The maintainer often must merge the contributor's feature branch into master in a local clone and confirm that it works as expected.__ As this activity is about training contributors, we will not go into the details about how to be a maintainer here.

3. After reviewing the PR, do one of the following
    - Accept the PR by merging it into master: choose "squash and merge" strategy for now and click __Merge pull request__ and then __Confirm__.
    - Request modifications to the PR if it needs work by leaving a message in the PR indicating what needs to be done.
    - Reject the PR by closing it and leaving a message of why you are closing it.


### Contributor decides what to do next


* If the _maintainer_ merged your PR into the master branch in the team repository, go to [Clean up](#clean-up) below.
* If the _maintainer_ closed the PR without merging (maybe because it's obsolete, or not a feature the maintainer wants, etc.), go to [Clean up](#clean-up) below.
* If the _maintainer_ asked for adjustments to your work, return to [Work on the issue](#work-on-the-issue) above and make the requested changes.


### Clean up

The feature branch is no longer needed. You should remove any branches that are not needed to avoid future
confusion.

1. Checkout the master branch, update master with changes from upstream, and push those changes to your fork. This synchronizes master across your team's repository, your fork, and your clone.
    ```
    git checkout master
    git pull upstream master
    git push origin master
    ```
2. Delete the feature branch from your local repository.
    ```
    git branch -d FEATURE_BRANCH
    ```
    Note: if the last statement complains that the branch has not been merged, you may be trying to delete the wrong branch or the maintainer may have used a "merge" strategy that was not a merge at all. So first, check that you have the correct branch and that your pull-request for that branch has actually been merged. If so, and you are really, really, REALLY sure, then force the delete with a capital "D": `git branch -D FEATURE_BRANCH`.

3. Delete the feature branch from your fork.
    ```
    git push -d origin FEATURE_BRANCH
    ```

Congratulations, having cleaned up your repositories you have completed this workflow!

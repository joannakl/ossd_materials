# `git` hands-on activity


Unless noted otherwise all content is released under [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/).


## Notes for instructors

### Organization

Students should be working in groups of three, but they should not be working together. At the beginning of the class meeting, hand out cards to student. The card should have  a group name and member number (those combinations should be unique). A sample
set of 12-team cards is included in this repository.
Students in the same team, should be distributed within the room - this way they are collaborating using the repository only.

If your class size is not a multiple of three, then allow some groups to be of size 4. The activities for member 4 below are
limited and optional, so any team without member 4 will be just fine.

### Setup

Create an empty repository for each team in the class organization on GitHub. The students should have permissions to write to these repositories.



## Activity

### Introduction
In this activity, you will collaborate with two or three other people. All of you are going
to be working with the same repository.
As different team-members make changes to the content repositories you will encounter some
issues. The objective of this activity is to learn how to resolve different types of issues
that may arise when collaborating with other people.

### Instructions

- If the instructions below state "create a file and commit", you should create a file, then
add it to the staging area and commit using a descriptive message:

  ```
  git add FILE_NAME
  git commit -m "MESSAGE FOR THE COMMIT"
  ```
- If the instructions below state "push changes to the remote repository", you should make sure that all the latest changes are committed (see above) and then push those changes:  

  ```
  git push origin master
  ```

- If you run into any problems while completing different rounds of this activity, raise
your hand and we will try to help out as quickly as we can.

### Actual Activity

<table>
<tr> <th>round</th><th> member 1</th><th>  member 2</th><th>  member 3 </th><th>  member 4 </th> </tr>
<tr>
<td>1 </td>
<td colspan=4>  clone the team repository to a local machine<br>
`git clone REPO_URL` </td>
</tr>
<tr>
<td>2 </td>
<td > create a `README.md` fie, it should contain a top level heading with a team name, commit the file and push it to the remote repository  </td>
<td> create a `LICENSE.txt` file, select one of the available software licenses, commit the file and push it to the remote repository  </td>
<td> use [Wikimedia Commons](https://commons.wikimedia.org/) to locate an image that will serve as a mascot for your team; download the file, add it to the repository and commit the file, (remember where you got the file from, you will need that information later) </td>
<td> </td>
</tr>
<tr>
<td>3 </td>
<td colspan=4>

- create a new empty file named with your own name (I would create a file called `joanna.md`), for example, <br>
- add the file to the repository, commit and push changes to the remote repository,

</td>
</tr>
<tr>

<td colspan=5>
In the last two steps, most of you should have encountered some issues when you tried pushing to the remote.
Since several people push changes to the same repository, most of you tried to push after someone else modified that remote repository. In many cases `git` can figure out how to combine
the changes made by different people. But, you will need to execute `git pull` to update
your local copy of the repository to the latest version of the remote repository.
</td>
</tr>

<tr>
<td colspan=5 align=center>
__Resolving meger conflincts__
</td>
</tr>

<tr>
<td>4 </td>
<td colspan=4>
- In your local repository you should have the file called `README.md` right now. If not,
execute `git pull` to synchronize your local repository with the remote one. <br>

- Edit the `README.md` file by adding your name to the file right below the name of the
team.  <br>

- Commit the changes and push them to the remote repository.  <br>

</td>

</tr>

<tr>
<td>4 </td>
<td colspan=4>

- run the command `git remote -v` and add the result to the body of the newly created file (include the above command in your file so that it is clear which output corresponds to which command);

</td>
</tr>



<tr>
<td> </td>
<td>

</td>
<td>

</td>
<td>

</td>
<td>

</td>

</tr>




<tr>
<td>4 </td>
<td colspan=4>

</td>

</tr>


</table>

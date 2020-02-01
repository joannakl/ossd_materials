
### Objective

The purpose of this activity is to give you some practice in synchronizing your
work with the work of team members on a group project that uses Git for
version control. However, this activity, unlike several others in this course,
has been designed as an individual exercise rather than a team exercise.
The reason for this is that it allows you to do the exercise independently, and as
often as you wish.


### Requirements

1. This activity is based on the assumption that you have read the slides on
collaboration workflows that I published on the course website:
[Collaboration Workflows: Basics](http://www.compsci.hunter.cuny.edu/~sweiss/course_materials/csci395.86/slides/collaborating_workflows.html)
.
These slides cover the basics about remotes, branching, and methods of
synchronizing repositories. A second set of slides  specifically covers
merging and rebasing and is also published on the website. They are not complete
yet, but contain sufficient material:
[Tutorial on Merging and Rebasing](http://www.compsci.hunter.cuny.edu/~sweiss/course_materials/csci395.86/slides/git_merge_rebase.html).



2. Although any Git server could be used for this activity, the instructions
are based on the assumption that you have a `GitHub` account. If you choose to
use some other source code hosting server, just replace references to GitHub by that
server throughout.

3. Though not a strict requirement, you will get much more benefit out of this
activity if you have installed a Git viewer of some kind. Several of these
viewers are actually graphical front-ends to Git, but I discourage you from
using them for this purpose. The purpose of using a viewer while doing this
activity is to see visually how graph representation of the repository's history
changes as a result of various Git commands. It is not to replace using the
command-line!

   One choice is __`Qgit`__ and the other is __`gitg`__. I prefer `gitg`.
Both are open source, and both can be installed from repositories in Ubuntu.
For other Linux systems, do a browser search and find the repositories for your system.
`gitg` is available for 64-bit Windows and in source code tarballs here:
[https://wiki.gnome.org/Apps/Gitg](https://wiki.gnome.org/Apps/Gitg)
 and `Qgit` has a repository on GitHub: [Qgit](https://github.com/tibirna/qgit).

4. These instructions assume you are working in a terminal window, naturally.


### Setup

1. Download the script located in this repository named `create_demo_repo.sh`.
Copy it into a directory that is listed in your shell's `PATH` variable, such
as `~/bin`, as it will be useful to have for future use. Make sure it is
executable:

    ```bash
      $ chmod +x ~/bin/create_demo_repo.sh
    ```

2. Follow the instructions in the file `Instructions.md` in this repository.

3. Have fun. I think it is cool to see how Git works visually and to see how
powerful it is.

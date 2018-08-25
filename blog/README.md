# Jekyll based blogs hosted on GitHub pages

In many courses in which students are exposed to free open source software, they
are asked to write reflections or answer questions about the new material.
This is frequently done via blog posts. There are many blogging sites available.

Here is yet another possible setup for blogs using [Jekyll](https://jekyllrb.com/)
and GitHub pages.

## Setting up repositories

The `weekly` directory in this repository contains files required for a basic blog
setup. Each student should have a public repository (in a course organization, in their
own account, or ...) that will host their blog. The repository should be populated
with the files from the `weekly` directory. (If you are teaching
large classes and need to be able to create a large number of identical repositories
look into [GitHub classroom](https://classroom.github.com/) or [teachers pet](https://github.com/education/teachers_pet)).

## Customization for each student.

Following the initial setup by an instructor, each student needs to customize their own
blog. Here are the steps for students:

- locate your repository (in the class organization or elsewhere), it should be called __YOUR_ID-weekly__  

- goto Settings and scroll down to GitHub Pages section

- switch the __None__ option to __master branch__ (__WARNING__: students need administrative access to their respositories for this step or this step needs to
be completed by someone who has that access)

- edit `_config.yml` file and follow the instructions in the comments

- edit the `about.md` file to include some information about yourself
(make sure that you are using mardown to format this page)


## Creating blog posts

The blog posts (weekly or otherwise) are created by adding markdown formatted files
to the `_posts` directory. The file name has to match a very specific format
`YYYY-MM-DD-TITLE.md`, for example `2018-01-28-week01.md`.  The template should
contain a file for the first one or two posts for the students to use.
Each of the files corresponds to a single blog post.

## Changing layouts (optional)

The provided template has a very simple design. Each student can customize this
basic layout by changing the files in `_layouts` directory, `index.html` file and `style.scss` file. For more information about it, go through [Jekyll](https://github.com/nyu-ossd-s18/jf2920-weekly) documentation pages.

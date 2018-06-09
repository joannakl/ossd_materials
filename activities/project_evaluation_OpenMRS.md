# Project Evaluation – OpenMRS

## Background

Not all projects are equally good for someone wanting to become a contributor. Some projects just don't welcome new contributors, or are not well organized to support getting new people up to speed. Other projects are welcoming to new contributors and provide clear pathways to join the community. Anyone considering becoming a contributor to a project should have some idea what to look for in evaluating whether a project is a good choice for becoming a contributor. While these evaluation criteria are not foolproof, they at least provide a starting point and framework of things to consider.


## Deliverables

Complete this [project evaluation rubric](project_evaluation_rubric.md) as you go through
the steps below.  

## Directions - Walk through of an evaluation of the OpenMRS project

There are many criteria that should be looked at when determining if a project is appropriate for new contributors, including students. These criteria are prioritized and explored below. The Project Evaluation Rubric contains instructions for each criterion and directions on scoring criteria. Include your findings (notes and the answers to the questions below) in your copy of the rubric, along with your scores for each.

__Licensing__ - An important first step is to identify the license used by the project. An open source project must specify that others are free to use it, redistribute it, change it, and redistribute modified versions too. An extensive list of open source licenses can be found at [Open Source Initiative site](https://opensource.org/licenses/alphabetical). A list of free software licenses can be found at [GPL-Compatible Free Software Licenses](https://www.gnu.org/licenses/license-list.html#GPLCompatibleLicenses)

-   Go to the [OpenMRS core repository](https://github.com/openmrs/openmrs-core). On the repository page, click on the `<> Code` tab below the repository name. Look at the information line below the tabs for a license name. Note: if the license does not appear here (or if a project is hosted on a site other than GitHub), look at the top level files in the repository for a LICENSE file.
-   Does OpenMRS use an OSI approved open source license? Enter your findings in the rubric.

![OpenMRS repository screenshot](img/proj_eval_OpenMRS.jpg)

__Language__ - The language(s) used in the project is an important consideration but interpretation may vary. If the project is written in a language(s) you are already familiar with, or better yet, well versed in, this is one less hurdle to overcome. On the other hand, you may pick a project that uses a language you do not know, but would like to learn.

-   Click on the language details bar (see image above). Record the top three languages used and the percentage for each.

__Activity__ - To support new participants, a project should be reasonably active. Number of commits can be used as an indicator of activity. Little to no activity over a year, for example, may indicate that the project is dead, or mature and not being actively developed.

-   Click the "Insights" tab then select "Commits"
-   If we define "Active" as meaning that a majority of the weeks in a given quarter have commits, determine whether each quarter was active over the last year and place your findings in the rubric. Note: since the definition of "active" is approximate, assess each quarter at a glance rather than by actual count of commits.

__Number of contributors__ - A common FOSSism (an expression about FOSS) states that "It's all about community," so a suitable project should have an active user community. The community members are great resources for potential new contributors as they begin to learn about a new project, its culture, and norms.

-   Click the `<> Code` tab. The number of contributors is listed above the language details bar. Determine how many contributors there are to the OpenMRS core project and enter your findings in the rubric.

__Size__ - The size of the project is likely to be a factor depending on the level of expertise of a potential contributor. A large project that is built using many technologies is likely to seem overwhelming to a less experienced person, for example, but may be a perfect fit for someone with a lot of experience. A simple first step is to determine how large the project is, additional research could be done to ascertain complexity. By default, Github does not provide information about how many lines of code there are in a repository or its size. You can however install an extension for Google Chrome that will display the size. Follow the instructions below to install the extension (optional).

1.  Open Chrome and go to: <https://chrome.google.com/webstore/search/github%20repository%20size>
2.  Click the “Add to Chrome” button for the GitHub Repository Size extension
3.  Return to the GitHub page for OpenMRS. You should now see the repository size next to license type. Record the size in the rubric.

__Issue tracker__ - The issue tracker can provide insight into the health of a project. An active issue tracker should highlight issues that clients/developers have logged as well as an indication that these issues are being addressed.

-   Click "Issues" (note: this should appear next to `<> Code`; if you do not see this tab, then there are no issues logged in Github). OpenMRS uses a third-party issue tracker - click the link to openmrs.org located near the top of the repository page, scroll to the bottom and click the "OpenMRS Issue Tracking" link. Scroll to the table labeled "Two Dimensional Filter Statistics: All JIRA Tickets" located near the bottom of the page. Provide answers to the following in the rubric.

1.  How many open (for OpenMRS look at "ready for work") issues are there?
2.  How many closed issues are there?
3.  When was the fifth issue opened (for OpenMRS look at the "ready for work" issues)?
4.  Based on browsing the table, and clicking on some of the table cells, assess whether issues are actively being added and resolved

__New contributor__ - The project should appear welcoming to new contributors. Some clear examples of this would be links to getting started pages or information on ways to become involved. These pages, in turn, should include additional detail about __how__ to become involved, as well as information about __how__ to connect with the community.

-   Browse the repository and associated links, is there any indication that the project welcomes new contributors? Indicate which of the following are present and provide links in the rubric. Note: for OpenMRS you will find that the link at the top to openmrs.org and the link toward the bottom of the repository page to the OpenMRS wiki quite useful!

1.  Are there instructions for downloading and installing the development environment?
2.  Are communication mechanisms, such as IRC, list serves, you can join, meeting notices, etc. apparent?
3.  Is there a discussion platform? If so, how recent are the responses?
4.  Is there Web presence? This might include information about the project, how to get started as a developer, links to blogs, links to IRC logs, links to pages that contain information about coding standards and the code submission process.

__Community norms__ - The way in which community members interact with one another is equally important, especially for student involvement. You do not want to work on a project that advocates or permits rude, aggressive, or unprofessional behavior.

-   Some projects provide a "Code of Conduct", yet others do not. It it quite possible that you will find the code of conduct more quickly by doing a Google search. For OpenMRS you should look in the "Developer Guide" (link along the left side in the OpenMRS wiki) and then choose "Conventions"
-   You should also review some actual communications to determine if there are any indications of rude or inappropriate behavior. This could be quite time consuming since you would first have to determine the type of communication typically used by community members and then locate and review the appropriate artifacts. For OpenMRS, click the "TALK" link at the top of the OpenMRS wiki page and review the communications that occurred for two of the topics. Choose two that have at least 5 members and 15 or more replies.
-   Record the following in the rubric.

1.  Provide three observations about the OpenMRS Code of Conduct.
2.  Provide three observations about the type of communication that occurred between community members on TALK. Is there any indication of rude or inappropriate behavior?

__User base__ - A project will not thrive without a core user-base. The user-base consists of clients, people who use the product on a day-to-day basis. They provide the development team with necessary feedback about the project, what works, what doesn't and what new features they might like to see. If no one is using the product then developers are likely to abandon it. Browse the repository and related links.

-   In the rubric record your answers to the following.

1.  Does there appear to be a user base?
2.  Are there instructions for downloading and setting up the software for use by clients?
3.  Are there instructions for how to use the software?

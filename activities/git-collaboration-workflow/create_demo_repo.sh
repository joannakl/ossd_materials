#!/bin/bash
# Creates a forked repository for experimenting and exploring
# various synchronization methods using git.
# Written by Stewart Weiss, April 20, 2019
#
# USAGE:  create_demo_repo.sh  <new-repository-name>
# This will create a repository with the given name in the
# current working directory, assuming you have write-permission
# in that directory. The structure of this repository is easily
# modified by tinkering with the parameters of this script.
#
# MIT License
# 
# Copyright (c) 2019 Stewart Weiss
# 
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
# 
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
# 
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

# Define various branch lengths 
master_branch_length=3
feature1_branch_length=2
let startval=$master_branch_length-1

# Check usage
if [ $# -lt 1 ] ; then
    echo "usage: `basename $0` repository_name "
    exit
fi

# Initialize an empty repository in the current working directory
git init $1
if [ $? -ne 0 ] ; then
    echo "Error trying to create repository named $1"
    exit
fi

# Navigate into the repository
cd $1

# Create a README.md file, stage and commit it.
echo "This is a repository designed to practice a workflow using " > README.md
echo "fetch, merge, rebase, and a few other git commands." >> README.md
git add README.md ; git commit . -m "added README.md"


# Create some files and commits in current branch
for i in `seq 1 ${master_branch_length}` ; do
    echo "line_${i}" > file${i} ; git add file${i} ; git commit . -m "added file${i}"
done

# Create a new branch named feature1 and add some commits to it
git checkout -b feature1

for i in `seq 1 ${feature1_branch_length}` ; do
    echo "line_${i}" > feature1_${i} ; git add feature1_${i} ; git commit . -m "added feature1_${i}"
done

# Add two more commits to master so that the history is forked
# In particular we will force a conflict when we try to merge or rebase
git checkout master
for i in `seq ${startval} ${master_branch_length}` ; do
    echo "modified_line_${i}" >| file${i} ; git add file${i} ; git commit . -m "Modified file${i}"
done


# Navigate out to the working directory
cd ..

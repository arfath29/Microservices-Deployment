#!/bin/bash

commit_message="initial commit"



# Loop through all local branches
for branch in $(git branch | sed 's/*//'); do
    git checkout $branch
    git add .
    git commit -m "$commit_message"
done

# Switch back to the previous branch
git checkout -

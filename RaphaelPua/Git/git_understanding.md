# Git Concepts: Staging vs. Committing

## Git Experiment

- Experimenting on how to use Git add and Github desktop 

## What is the difference between staging and committing?

- The staging is done by using "git add" within the terminal which tells Git which files I want to commit, but the changes or files have not yet been recorded. 
- Committing is also done in the terminal doing "git commit -m'[message]'", where the developer typically has to add a commit message which usually comment on what changes the person did. The staged files and changes is then recorded and added to the local Git history. 

## Why does Git separate these two steps?

- Git separated these two steps so that you can specify the exact files and changes you want to commit/store to the repository. For example, I made changes to 3 files, but I actually only want to commit 2 files, I will stage the two files while the other one is kept at that state. This allows me to select and ensure what I am adding and committing are useful or needed. The staging is like a small check point to tell the developer if you really want to continue and permanently commit the changes/files.

## When would I want to stage changes without committing?

- I would make stages when I have finished changing the file but I still want to review it later before actually committing it. Another reason is that I would stage some files first as I want to review what I actually need to include for my commit before recording it. 
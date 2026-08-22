# Git Concepts: Staging vs. Committing

## Git Experiment

- Experimenting on how to use Git add and Github desktop 

### What is the difference between staging and committing?

- The staging is done by using "git add" within the terminal which tells Git which files I want to commit, but the changes or files have not yet been recorded. 
- Committing is also done in the terminal doing "git commit -m'[message]'", where the developer typically has to add a commit message which usually comment on what changes the person did. The staged files and changes is then recorded and added to the local Git history. 

### Why does Git separate these two steps?

- Git separated these two steps so that you can specify the exact files and changes you want to commit/store to the repository. For example, I made changes to 3 files, but I actually only want to commit 2 files, I will stage the two files while the other one is kept at that state. This allows me to select and ensure what I am adding and committing are useful or needed. The staging is like a small check point to tell the developer if you really want to continue and permanently commit the changes/files.

### When would I want to stage changes without committing?

- I would make stages when I have finished changing the file but I still want to review it later before actually committing it. Another reason is that I would stage some files first as I want to review what I actually need to include for my commit before recording it. 

## Branching & Team Collaboration

### Why is pushing directly to main problematic?

- It is a bad idea as project may have multiple people working on it and thus any changes within the code or files can impact the others who are also working on the same project. For instance, there are 5 developers working on the same project, somebody can accidentally push a bug or issue to the main branch immediately, causing the whole main branch to also be broken, this would not only be a huge problem for the whole project, but the current work the other developers will also be impacted as they cannot check if its their code that is breaking the branch or not. Having their own branches allow developers to test their work first to check if it would break anything or not. Adds a layer of protection from accidental changes.

### How do branches help with reviewing code?

- Branches allow developers to work independently and submit their changes through a Pull Request. After the pull request, their branch and the new files they added can be reviewed first to see if the files and changes are valid and do not harm the main branch. Other developers can essentially see the change, understand the "Why" they made the change, whether the code follows standards, if their bugs, etc. When it passes review, then it is finally merged to the main branch which now can the changes can be seen by other developers.

### What happens if two people edit the same file on different branches?

- This can lead to something called a merge conflict where 2 or more developers may have changed a file together with their changes overlapping each other. Git cannot determine what would be the correct version and thus would ask the developers which version is the correct one. This adds a layer of protection by preventing any sudden changes and asks for developers to properly manage the change themselves to ensure it does not cause issues to the main branch
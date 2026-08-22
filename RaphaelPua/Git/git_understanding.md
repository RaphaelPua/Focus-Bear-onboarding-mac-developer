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

- This can lead to something called a merge conflict where 2 or more developers may have changed a file together with their changes overlapping each other. Git cannot determine what would be the correct version and thus would ask the developers which version is the correct one. This adds a layer of protection by preventing any sudden changes and asks for developers to properly manage the change themselves to ensure it does not cause issues to the main branch.

## Advanced Git Commands & When to Use Them

### Temporary Experiment

This is a temporary change for testing Git checkout.

### Cherry-Pick Experiment

This change was created on a separate branch and will be cherry-picked.

### What does each command do? When would you use it in a real project (hint: these are all really important in long running projects with multiple developers)?

- The "git checkout main -- < file >" command restores a specific file to the version that exists on the main branch. For example: git checkout main -- git_understanding.md; This is useful when I have made unwanted changes to one file and want to restore it without affecting changes in other files. One thing I learned is that this command can overwrite uncommitted changes in the selected file, so I should be careful when using it.

-  The "git cherry-pick < commit >" command applies a specific commit from another branch to the current branch. This is useful when I need one particular fix or feature from another branch but do not want to merge all of the other changes from that branch. For example, if another developer has created a bug fix in a particular feature in a different branch, I could cherry-pick that specific fix onto another branch without merging the entire feature branch.

- The "git log" command displays the commit history of a repository. I found git "log --oneline" particularly useful because it provides a shorter and easier-to-read list of commits and their commit IDs. This can help developers understand how a project has changed over time and identify specific commits when investigating previous work.

- The "git blame" command shows which commit and developer last modified each line of a file. This can be useful when working on a large project and trying to understand why a particular line of code exists or who made a change. It is also good to find the person accountable for the particular change and we can further ask them why they made the change. 

### What surprised you while testing these commands?

- What really surprised me how there are plenty of other useful commands that help developers in very specific situations. It shows how there was a lot of thought put into these commands. I initially though git operations were just mostly on committing and merging works and changes, but I saw how there are commands where it helps developers gather information on the work, the changes on that work, and who worked on those changes. I also found git blame interesting because it provides additional context about the history of individual lines rather than only showing the overall commit history. These commands would be particularly useful to keep in mind when I finally join Focus Bear's project as I will be working with multiple developers, and these commands would make it easier to investigate previous changes, recover files, and selectively move changes between branches.
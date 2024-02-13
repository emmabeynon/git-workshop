# Git commands

## What do I have available to commit?
- `git status`
- `git diff`

## What should be included in the commit?
- `git add -p` - pick hunks of code to add selectively
- `git add -N ${filename.rb}` - track a file

## How do I explain this commit?
- `git commit -m 'my commit message'` - make a one-line commit
- `git commit -v` - view a diff within your commit
- `git commit --amend` - add staged changes to the previous commit

## What happened before?
- `git log ${filename.rb}` - view the commit history for a file
- `git log -1 HEAD` - view the last commit
- `git log --oneline` - view the one-line version of the commit history
- `git log --stat` - view the changed files in each commit

## Moving work between branches
- `git cherry-pick ${my-commit-hash}` - insert a commit from another branch into this branch
- `git stash` - store current state of working directory and show a clean working directory
- `git stash push ${filename.rb}` - stash specific file(s)
- `git stash list` - display a list of stashes
- `git stash pop` - show a single stash

## Working with branches
- `git branch --sort=-committerdate` - sort local branches by most recently committed`
- `git branch --merged | grep -v main | xargs git branch -d` - delete local merged branches
- `git switch -` - switch back to the last branch
- `git rebase origin/main` - update local branch with latest changes in main

## Editing commits
- `git rebase --interactive ${commit-hash-before-starting-point}` - change the commit history of a branch (e.g. reword, edit, merge, reorder, drop)
- `git push --force-with-lease` - push without accidentally overwriting someone else's changes

## Something has gone wrong, I need the back button
- `git reflog` - see a list of recent actions in git, each marked with an index
- `git reset HEAD@{index}` - go back using the index of the action which was before the action that broke everything

## Other useful things
- `git reset HEAD --` - unstage all staged changes
- `git reset HEAD -- %{filename.rb}` - unstage all staged changes in a file
- `git reset --soft HEAD^` - undo the previous commit, but stage the changes
- `git commit -c ORIG_HEAD` - after the command above, commit again keeping the original message
- `git reset --soft ${commit-hash-before-starting-point}` - remove all the commits past a certain point but keep the changes

## If in doubt...
[Oh Shit, Git!?!](https://ohshitgit.com/)

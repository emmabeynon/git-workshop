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
- `git stash list` - display a list of stashes
- `git stash pop` - show a single stash

## Working with branches
- `git branch --sort=-committerdate` - sort local branches by most recently committed`
- `git branch --merged | grep -v main | xargs git branch -d` - delete local merged branches

## Other useful things
- `git reset HEAD --` - unstage all staged changes

## If in doubt...
[Oh Shit, Git!?!](https://ohshitgit.com/)

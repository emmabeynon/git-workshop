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

## What happened before?
- `git log ${filename.rb}` - view the commit history for a file
- `git log -1 HEAD` - view the last commit
- `git log --oneline` - view the one-line version of the commit history
- `git log --stat` - view the changed files in each commit

## Other useful things
- `git branch --sort=-committerdate` - sort local branches by most recently committed`
- `git cherry-pick ${my-commit-hash}` - insert a commit from another branch into this branch
- `git reset HEAD --` - unstage all staged changes
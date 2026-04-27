# Git Cheatsheet

## Daily routine

```bash
git checkout main
git pull --ff-only origin main
git checkout <branch-name>
git merge main
git status
git diff
git add <file>
git diff --staged
git commit -m "VERB filename: description"
git push
```

## New branch

```bash
git checkout main
git pull --ff-only origin main
git checkout -b <owner>/<feature-name>
git push -u origin <owner>/<feature-name>
```

## Push after first push

```bash
git push
```

## Delete merged branch

```bash
git checkout main
git pull --ff-only origin main
git branch -d <branch-name>
git push origin --delete <branch-name>
git fetch --prune
```

## Force delete local branch

```bash
git branch -D <branch-name>
```

## Merge conflict

```bash
git status
git add <file>
git commit -m "FIX merge conflict: resolve changes"
```

## Abort merge

```bash
git merge --abort
```

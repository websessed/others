
# Git Cheat Sheet: Beginner → Pro

---

## 1. Setup & Config

```bash
git config --global user.name "username"
git config --global user.email "you@email.com"
git config --list
```

---

## 2. Repositories

```bash
git clone "<repo-link>"
git init
git remote add origin https://github.com/user/repo.git
git remote set-url origin git@github.com/user/new-repo.git
git remote -v
```

---

## 3. Staging & Committing

```bash
git add file.ext
git add .
git commit -m "message"
git add . && git commit -m "message" && git push
git commit --amend -m "new message"
git reset --soft HEAD~1
```

---

## 4. Pushing & Pulling

```bash
git pull
git push
git push origin branch-name --force
```

---

## 5. Branching

```bash
git checkout -b feature-x
git switch feature-x
git branch
git switch main
git branch -d feature-x
git push origin --delete feature-x
```

---

## 6. Undo & Stash

```bash
git reset file.ext
git rm file.ext
git stash
git stash list
git stash pop
```

---

## 7. Viewing Changes & History

```bash
git status
git diff --cached
git diff
git log -1
git log --oneline --graph --all
git diff --name-only HEAD~1
git blame file.ext
```

---

## 8. Multi-Repo & Automation

```bash
for repo in repo1 repo2 repo3; do
  (cd "$repo" && git add file.ext && git commit -m "message" && git push)
done

for file in *; do
  if [ -f "$file" ]; then
    git add "$file"
    git commit -m "message $file"
  fi
done
git push

for repo in $(gh repo list USERNAME --limit 100 --json name -q '.[].name'); do
  gh repo clone USERNAME/$repo
done
```

---

## 9. Advanced Git

```bash
git rebase -i HEAD~5
git cherry-pick <commit-hash>
git format-patch <commit>
git reflog
git checkout -b branch-name <commit>
git checkout -b recover <commit>
git merge branch-name --no-ff
git merge branch-name --ff-only
git tag v1.0
git tag -a v1.0 -m "msg"
git push origin v1.0
```

---

## 10. Submodules & Large Files

```bash
git submodule add <url> path/to/submodule
git submodule update --init --recursive
git lfs track "*.psd"
git add .gitattributes
```

---

## 11. Hooks & Automation

```bash
#!/bin/sh
# pre-commit hook example
eslint . # run linter before commit
```

---

## 12. Best Practices

* Meaningful commit messages (`feat:`, `fix:`, `chore:`)
* Branch naming: `feature/`, `bugfix/`, `hotfix/`
* Keep history clean: prefer rebase over merge for minor changes
* Always pull before pushing to avoid conflicts
* Use tags for releases

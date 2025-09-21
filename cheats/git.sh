
#set global username/email
git config --global user.name "username"
git config --global user.email "you@email.com"


#clone a repo 
git clone "<link to github clone>"


#add, commit & push in one go
git add . && git commit -m "message" && git push
#or
git add file.ext && git commit -m "message" && git push

#add, commit & push the same file spread across multiple repos
for repo in repo1 repo2 repo3 repo4 repo5; do
  (cd "$repo" && git add file.ext && git commit -m "message" && git push)
done


#commit multiple files in a folder at once
for file in *; do
  if [ -f "$file" ]; then
    git add "$file"
    git commit -m "message $file"
  fi
done 

git push


#add a remote 
git remote add origin https://github.com/user/repo.git

#update new remote
git remote set-url origin git@github.com/user/new-repo.git


#pull latest changes from remote 
git pull 

#push changes to remote 
git push 

#force push (be careful)
git push origin branch-name --force 



#stash current changes (temporary saving)
git stash 

#list stashes
git stash list

#apply latest stash 
git stash pop 

#remove files & stage deletions 
git rm file.ext 

#unstage a file 
git reset file.ext 


#amend last commit message (without changing content)
git commit --amend -m "new message"

#undo last commit (but keep changes staged)
git reset --soft HEAD~1

#show last commit only 
git log -1 

#show files changed in last commit 
git diff --name-only HEAD~1



#create + switch branch
git checkout -b feature-x 

#list branches 
git branches

#switch branches 
git switch main 

#delete local branch 
git branch -d feature-x 

#delete remote branch 
git push origin --delete feature-x 



#clone all repos from a github org/user 
for repo in $(gh repo list USERNAME --limit 100 --json name -q '.[].name'); do
  gh repo clone USERNAME/$repo
done


#pretty log graph 
git log --oneline --graph --all


#blame who changed a line 
git blame file.ext


#show what's changed but not staged 
git diff 

#show what's staged (will be committed)
git diff --cached 


#show remote URLS 
git remote -v 

#show the current state of your current working dir 
git status 
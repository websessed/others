
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



#add a remote 
git remote add origin https://github.com/user/repo.git

#pull latest changes 
git pull 

#force push (be careful)
git push origin branch-name --force 



#stash current changes (temporary saving)
git stash 

#list stashes
git stash list

#apply latest stash 
git stash pop 


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


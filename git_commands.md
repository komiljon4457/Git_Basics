  235  git clone git@github.com:komiljon4457/Git_Basics.git
  252  git clone ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDKbrWO2iwAVUNJQ5yePVeApKaIm6TIQSGsuHrHDIECg/mtXUq8SoK/WfzqNtxdzSHO7Wbs0oMj0vCQx8Tr7J+fu/5pVKFlmqXkrUHtJuT5K/zI9HKGPR8m6OyTSe0K6A6uHx04RE2hLcKHgIgpmiZJwR5b2vD7R1jzmezUqZzjPk5Ji6LrwdypImvO2X4ijfENhxzG4VvgFlq+ukhnMpYVMXA2kzHsqZbYzHkaUXh63dkB9mfrq1a6WI19rzzgZGQzcDH/f8zVHgPYP9vgRtbWVE4XVM0+qdx5oLRjZwfFAHeNwKvG1pygwecrdUBdDpC95iEWNYFv+PKDnWaU5/5v9JA6osrfpEfHPK/Kp8I+ovJznxkgvUaXrY/sAeD3XWBw6aFhlXF8w/zXkWjxl/jE1QrW7SP1fH//iQG+e7djBbUoJhjLN5DVk18OuPcUOFeAC/gtUdIK1ms9gc+9fm/by6427OBRY3T5lQ3O4sFyu2PH3/g7lj4UUh7MfJU/4/k= justin@justin-HP-Laptop-15-da1xxx
  253  git clone git@github.com:komiljon4457/Git_Basics.git
  259  git branch 
  271  git add .
  272  git commit -m"File added"
  275  git commit -m"File added"
  276  git status
  277  git pull origin main 
  278  git status
  284  git commit -m"Task1 director and Reeadme file added"
  285  git config --global user.email justinyangiboev@gmail.com
  286  git config --global user.name komiljon4457
  287  git commit -m"Task1 director and Reeadme file added"
  288  git add .
  289  git commit -m"Task1 director and Reeadme file added"
  290  git push origin main 
  292  git checkout -b dev 
  295  git add . 
  296  git commit -m"Test file  added"
  297  git push origin dev
  298  git checkout -b komiljon4457 - new_feature
  299  git checkout -b komiljon4457-new_feature
  303  git branch 
  305  git add . 
  306  git commit -m"Readme  file  added"
  307  git push origin komiljon4457-new_feature 
  308  git status
  309  touch .gitignore 
  310  vim .gitignore 
  311  git add .
  312  git commit -m"All files added"
  313  git push origin 
  314  git push origin main 
  315  git push origin komiljon4457-new_feature  
  316  git pull origin dev
  317  git brach 
  318  git branch 
  319  git merge dev
  320  git pull origin main
  321  git checkout dev
  322  git merge main 
  323  git checkout main
  324  git merge dev
  325  git checkout komiljon4457-new_feature 
  328  git revert --help
  329  git revert origin/komiljon4457-new_feature 
  331  git branch 
  332  git reset --soft HEAD~1
  333  git log
  334  git checkout main 
  335  git log 
  336  git log > log.txt
  338  git branch -d komiljon4457-new_feature 
  339  git push origin --delete komiljon4457-new_feature
  340  git reflog
  342  history | grep "git" > git_commands.md

@echo off
::___________Set Variables______________________
:: Origin for this repo
:: Commit msg
    set commit_msg="git created , add, comited"
::____________Process begin here________________________
::echo Hear is the result_______________________
git add .
git commit -m %commit_msg%

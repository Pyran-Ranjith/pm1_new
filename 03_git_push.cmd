@echo off
::___________Set Variables______________________
:: Branch
set branch="master"
::____________Process begin here________________________
::echo Hear is the result_______________________
git branch -M %branch%
git checkout %branch%
git push -u origin %branch%


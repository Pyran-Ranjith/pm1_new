@echo off
::___________Set Variables______________________
:: Origin for this repo
  set this_repo=https://github.com/Pyran-Ranjith/pm1_new.git
::____________Process begin here________________________
::echo Hear is the result_______________________
::set origin 1. after clone to create local repo 
    ::git remote set-url origin %this_repo%
::set origin 2. Otherwise (after creade local git manually)
    git remote add origin %this_repo%
::disply origin
    git remote -v

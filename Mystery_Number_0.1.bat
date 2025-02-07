@echo off
:1start
echo ********************************
echo          Mystery Number
echo ********************************
timeout 1 > nul /NOBREAK
echo Welcome to Mystery Number!
echo 1 - Start the game
echo 2 - Quit the game
set /p choiceinput=Choice: 
if %choiceinput%==1 goto start
if %choiceinput%==2 exit
:start
title Mystery Number
cls
timeout 1 > nul /NOBREAK
echo ********************************
echo          Mystery Number
echo ********************************
timeout 1 > nul /NOBREAK
set /p Nbrech=Choose your max number: 
set /a Nba=%random% %%%Nbrech%
set /a Nc=0

:question
    set /p Nb=Your number: 
    set /a nc=nc+1

if %Nb% LSS %Nba% goto :PP
if %Nb% GTR %Nba% goto :PG
if %Nb% == %Nba% goto :Win
:PP
    cls
    echo ********************************
    echo          Mystery Number
    echo ********************************
    echo It's more!
    goto :question
:PG
    cls
    echo ********************************
    echo          Mystery Number
    echo ********************************
    echo It's less!
    goto :question

:Win
    cls
    echo ********************************
    echo          Mystery Number
    echo ********************************
    echo - Attempts: %Nc%
    echo - Number: %Nba%
    timeout 2 > nul /NOBREAK
    echo You have found!
    echo Well done!
    echo 1 - Restart the game
    echo 2 - Quit the game
    set /p endgame=Choice :
    if %endgame%==1 (
        goto start
    )
    if %engame%==2 (
        exit
    )
exit 
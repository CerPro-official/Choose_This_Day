@echo off
setlocal EnableExtensions EnableDelayedExpansion
title Choose_This_Day

rem =========================================
rem Created by Cerafin C F
rem Project: Choose_This_Day
rem Year: 2026
rem =========================================

rem ================= SPACE FIX =================
for /f %%A in ('"prompt $H & echo on & for %%B in (1) do rem"') do set "BS=%%A"

rem ================= MEMORY =================
set "day_count=0"
set "good_total=0"
set "bad_total=0"

set "last_morning="
set "last_school="
set "last_weekend_morning="
set "last_weekend_evening="

cls
echo loading...
timeout /t 2 >nul
cls


goto intro

rem ================= INTRO =================
:intro
cls
call :say "this is not a loud script." 1
call :say "it stays quiet.." 1
call :say "it only watches a routine form and weaken." 1
call :say "the story continues depending on your choices" 1
call :say "each step makes sense at last" 1
call :say "it prints text and waits for a choice." 1
call :say "that is enough to tell a story." 1

set /p name=your name: 
cls

call :say "all right, %name%." 1
call :say "now watch what repeats." 1

goto day_start

rem ================= DAY FLOW =================
:day_start
set /a day_count+=1
cls

if %day_count%==1 goto friday
if %day_count%==2 goto saturday
if %day_count%==3 goto sunday

goto evaluate

rem ================= FRIDAY =================
:friday
call :say "friday arrives like a door that is already half open." 1
call :say "the week is tired." 1
call :say "the mind is tired too." 1
call :say "school, phone, home, sleep." 1
call :say "the pattern is still pretending to be normal." 1

goto weekday_flow

rem ================= SATURDAY =================
:saturday
call :say "saturday comes without a bell." 1
call :say "there is no school to hide behind." 1
call :say "the day stretches out." 1

call :say "/ when there is space, habits become visible. /" 1

call :shuffle_sat_morning
echo.
echo what happens?
echo.
echo    1. !opt1!
echo    2. !opt2!
echo    3. !opt3!
echo.

choice /c 123 /n /m "choice:"
set "pick=!errorlevel!"
call set "real=%%map!pick!%%"

call :repeat_check weekend_morning !real!

if !real!==1 (set /a good_total+=1 & call :comment_good & call :say "he moves before the excuse can grow." 1)
if !real!==2 (set /a bad_total+=1 & call :comment_bad & call :say "he watches time pass and calls it rest." 1)
if !real!==3 (set /a bad_total+=1 & call :comment_bad & call :say "he lets the morning go untouched." 1)

goto saturday_evening

:saturday_evening
call :say "evening comes without asking permission." 1
call :say "the day is still there, but thinner now." 1

call :shuffle_sat_evening
echo.
echo what does he do?
echo.
echo    1. !opt1!
echo    2. !opt2!
echo    3. !opt3!
echo.

choice /c 123 /n /m "choice:"
set "pick=!errorlevel!"
call set "real=%%map!pick!%%"

call :repeat_check weekend_evening !real!

if !real!==1 (set /a good_total+=1 & call :comment_good & call :say "he prepares while there is still time to prepare." 1)
if !real!==2 (set /a bad_total+=1 & call :comment_bad & call :say "he delays again, as if delay is harmless." 1)
if !real!==3 (set /a bad_total+=1 & call :comment_bad & call :say "he chooses silence over change." 1)

goto night

rem ================= SUNDAY =================
:sunday
call :say "sunday is quieter." 1
call :say "quiet does not mean clean." 1
call :say "it only means the noise has moved inside." 1

call :shuffle_sun_morning
echo.
echo what happens?
echo.
echo    1. !opt1!
echo    2. !opt2!
echo    3. !opt3!
echo.

choice /c 123 /n /m "choice:"
set "pick=!errorlevel!"
call set "real=%%map!pick!%%"

call :repeat_check weekend_morning !real!

if !real!==1 (set /a good_total+=1 & call :comment_good & call :say "he reflects before the thought escapes." 1)
if !real!==2 (set /a bad_total+=1 & call :comment_bad & call :say "he distracts himself and calls it balance." 1)
if !real!==3 (set /a bad_total+=1 & call :comment_bad & call :say "he looks away from the thing that matters." 1)

goto sunday_night

:sunday_night
call :say "night arrives." 1
call :say "the week stands there in pieces." 1
call :say "something has been learned." 1
goto evaluate

rem ================= WEEKDAY FLOW =================
:weekday_flow
call :say "morning starts before he is ready for it." 1
call :say "the alarm ends." 1
call :say "the phone begins." 1
call :say "one habit enters before the others can defend themselves." 1

call :shuffle_morning
echo.
echo what happens?
echo.
echo    1. !opt1!
echo    2. !opt2!
echo    3. !opt3!
echo.

choice /c 123 /n /m "choice:"
set "pick=!errorlevel!"
call set "real=%%map!pick!%%"

call :repeat_check morning !real!

if !real!==1 (set /a good_total+=1 & call :comment_good & call :say "he gets up before the loop fully closes." 1)
if !real!==2 (set /a bad_total+=1 & call :comment_bad & call :say "he stays half-awake and fully delayed." 1)
if !real!==3 (set /a bad_total+=1 & call :comment_bad & call :say "he remains where the habit left him." 1)

goto school

:school
call :say "school feels the same from the outside." 1
call :say "inside, a task is waiting." 1
call :say "unfinished things always wait more loudly." 1

call :shuffle_school
echo.
echo what does he do?
echo.
echo    1. !opt1!
echo    2. !opt2!
echo    3. !opt3!
echo.

choice /c 123 /n /m "choice:"
set "pick=!errorlevel!"
call set "real=%%map!pick!%%"

call :repeat_check school !real!

if !real!==1 (set /a good_total+=1 & call :comment_good & call :say "he clears it now and removes the weight from later." 1)
if !real!==2 (set /a bad_total+=1 & call :comment_bad & call :say "he saves it for later, and later becomes heavier." 1)
if !real!==3 (set /a bad_total+=1 & call :comment_bad & call :say "he drops it from sight, not from consequence." 1)

goto night

rem ================= NIGHT =================
:night
call :say "night returns with the same face." 1
call :say "tomorrow i will fix it." 1
call :say "the sentence is familiar." 1
call :say "familiar is not the same as true." 1
goto day_start

rem ================= EVALUATION =================
:evaluate

if %bad_total% GEQ 4 goto loop_end
if %good_total% GEQ 4 goto disciplined_end

goto mixed_end

rem ================= REPEAT =================
:repeat_check
set "phase=%~1"
set "cur=%~2"

if defined last_%phase% (
    if "!last_%phase%!"=="!cur!" if %day_count% GEQ 2 (
        call :say "/ this was not a new choice. /" 1
    )
)
set "last_%phase%=!cur!"
exit /b

rem ================= COMMENTS =================
:comment_good
if %good_total%==2 call :say "/ that was not delayed. /" 1
if %good_total% GEQ 4 call :say "/ this is becoming a direction. /" 1
exit /b

:comment_bad
if %bad_total%==2 call :say "/ it happens again. /" 1
if %bad_total% GEQ 4 call :say "/ it is easier each time. /" 1
exit /b

rem ================= SHUFFLES =================
:shuffle_morning
set "map1=1"
set "map2=2"
set "map3=3"
set "opt1=he gets up now because waiting only makes the day sharper later"
set "opt2=he scrolls a little longer because the first minutes feel soft"
set "opt3=he stays in bed because staying is easier than starting"
call :swap
call :swap
exit /b

:shuffle_school
set "map1=1"
set "map2=2"
set "map3=3"
set "opt1=he does it now because unfinished work follows him anyway"
set "opt2=he leaves it for later because later still feels distant"
set "opt3=he ignores it because it feels smaller than his mood"
call :swap
call :swap
exit /b

:shuffle_sat_morning
set "map1=1"
set "map2=2"
set "map3=3"
set "opt1=he starts something he has been postponing"
set "opt2=he watches the morning fade from behind a screen"
set "opt3=he goes back to sleep and gives the day away"
call :swap
call :swap
exit /b

:shuffle_sat_evening
set "map1=1"
set "map2=2"
set "map3=3"
set "opt1=he prepares for tomorrow before tomorrow starts demanding"
set "opt2=he delays again and pretends there is time to spare"
set "opt3=he ignores it completely and trusts luck"
call :swap
call :swap
exit /b

:shuffle_sun_morning
set "map1=1"
set "map2=2"
set "map3=3"
set "opt1=he reflects and lets the silence say something honest"
set "opt2=he distracts himself until the feeling dulls"
set "opt3=he avoids it and calls the escape peace"
call :swap
call :swap
exit /b

:swap
set /a r1=!random!%%3+1
set /a r2=!random!%%3+1
for %%A in (!r1!) do for %%B in (!r2!) do (
    call set "t=%%map%%A%%"
    call set "map%%A=%%map%%B%%"
    set "map%%B=!t!"
    call set "t=%%opt%%A%%"
    call set "opt%%A=%%opt%%B%%"
    set "opt%%B=!t!"
)
exit /b

rem ================= TYPE =================
:say
setlocal EnableDelayedExpansion
set "msg=%~1"
set /a i=0

rem base speed ranges
set "min=25"
set "max=85"

:loop
set "ch=!msg:~%i%,1!"
if "!ch!"=="" goto done

rem print character (keep your space fix)
if "!ch!"==" " (
    <nul set /p "=X!BS! "
) else (
    <nul set /p "=!ch!"
)

rem ================= REALISTIC TIMING =================

rem base random delay
set /a delay=!random!%%(!max!-!min!)+!min!

rem punctuation pauses (natural stops)
if "!ch!"=="." set /a delay+=220
if "!ch!"=="," set /a delay+=140
if "!ch!"=="!" set /a delay+=200
if "!ch!"=="?" set /a delay+=220
if "!ch!"==":" set /a delay+=160

rem slight pause after spaces (word thinking)
if "!ch!"==" " set /a delay+=40

rem occasional hesitation (human inconsistency)
set /a chance=!random!%%18
if !chance!==0 set /a delay+=180

rem rare long pause (thinking moment)
set /a deep=!random!%%45
if !deep!==0 set /a delay+=350

rem ================= APPLY DELAY =================
>nul ping -n 1 -w !delay! 127.0.0.1

set /a i+=1
goto loop

:done
echo(
endlocal & exit /b

rem ================= ENDINGS =================


:loop_end
cls
call :say "nothing broke the pattern." 1
call :say "not once." 1
call :say "not even when it was clearly visible." 1
call :say "the same choices returned, again and again," 1
call :say "until they stopped feeling like choices at all." 1
call :say "they became default." 1
call :say "automatic." 1
call :say "quiet." 1
call :say "dangerous." 1
call :say "." 1
call :say "time moved forward." 1
call :say "but nothing inside him moved with it." 1
call :say "days passed." 1
call :say "then weeks." 1
call :say "and the pattern remained untouched." 1
call :say "." 1
call :say "he once said: tomorrow i will fix it." 1
call :say "now even that sentence is gone." 1
call :say "this is how it happens." 1
call :say "not with failure." 1
call :say "but with repetition." 1
call :say "-“The soul of the sluggard craves and gets nothing, while the soul of the diligent is richly supplied.”- (Proverbs 13:4)" 1
pause
cls
call :credits
exit


:disciplined_end
cls
call :say "something changed." 1
call :say "it was small enough to ignore." 1
call :say "but it was not ignored." 1
call :say "." 1
call :say "a single moment resisted the pattern." 1
call :say "then another." 1
call :say "not perfectly." 1
call :say "not consistently." 1
call :say "but enough." 1
call :say "." 1
call :say "discipline did not arrive as motivation." 1
call :say "it arrived as interruption." 1
call :say "a break in the automatic." 1
call :say "." 1
call :say "the delay was not allowed to win every time." 1
call :say "and that was new." 1
call :say "this is how it begins." 1
call :say "quiet." 1
call :say "unnoticed." 1
call :say "but real." 1
call :say "-“God gave us a spirit not of fear but of power… and self-control.”- (2 Timothy 1:7)" 1
pause
cls
call :credits
exit


:mixed_end
cls
call :say "it is not fixed." 1
call :say "that much is clear." 1
call :say "." 1
call :say "some choices resisted." 1
call :say "some choices repeated." 1
call :say "the pattern cracked," 1
call :say "but did not break." 1
call :say "." 1
call :say "he noticed it now." 1
call :say "that is the difference." 1
call :say "what was invisible is now seen." 1
call :say "." 1
call :say "and that is uncomfortable." 1
call :say "because now every delay feels deliberate." 1
call :say "every repeat feels chosen." 1
call :say "." 1
call :say "this is the middle." 1
call :say "not failure." 1
call :say "not victory." 1
call :say "but awareness." 1
call :say "and awareness does not let you go back unchanged." 1
call :say "-“You are neither cold nor hot… because you are lukewarm, I will spit you out.”-(Revelation 3:15–16)" 1
pause
cls
call :credits
exit
rem ================= CREDITS =================
:credits
call :say "hey %name%, you have completed this story successfully. Btw this story's ending differs from person to person." 1
call :say "credits" 1
call :say "First of All, im Thanking God." 1
call :say "“Through Jesus, this creation was made possible.”" 1
call :say "concept, design, narrative:" 1
call :say "Cerafin C F" 1
call :say "-" 1
call :say "ai collaboration and system support:" 1
call :say "ChatGPT by OpenAI" 1
call :say "-" 1
call :say "this script is not just code." 1
call :say "it is a reflection loop." 1
call :say "----------------------------------------" 1
pause
exit /b

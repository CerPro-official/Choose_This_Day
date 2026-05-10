@echo off
setlocal EnableExtensions EnableDelayedExpansion
title Choose_This_Day
mode con: cols=170 lines=28
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
set "last_sunday_evening="

cls
echo loading.
timeout /t 1 >nul
cls
echo loading..
timeout /t 1 >nul
cls
echo loading...
timeout /t 1 >nul
cls
echo loading..
timeout /t 1 >nul
cls
echo loading.
timeout /t 1 >nul
cls
call :boot_intro

goto intro

rem ================= CLEAN INTRO =================
:boot_intro
color 0A
cls
echo.
echo.
echo                .d8888b.
echo               d88P  Y88b
echo               888
echo.
echo.
echo.
echo.
echo.
echo.
echo.
timeout /t 1 >nul
cls
echo.
echo.
echo                .d8888b.  888                                                 88888888888
echo               d88P  Y88b 888                                                     888
echo               888    888 888
echo               888        88888b.   .d88b.   .d88b.
echo               888        888 "88b d88""88b d88""88b
echo               888    888 888  888 888  888 888  888
echo               Y88b  d88P 888  888 Y88..88P Y88..88P
echo                "Y8888P"  888  888  "Y88P"
echo.
echo.
timeout /t 2 >nul
cls
echo.
echo.
echo                .d8888b.  888                                                 88888888888 888      d8b                   8888888b.
echo               d88P  Y88b 888                                                     888     888      Y8P                   888  "Y88b
echo               888    888 888                                                     888     888                            888    888
echo               888        88888b.   .d88b.   .d88b.  .d8888b   .d88b.             888     88888b.  888 .d8888b           888    888  8888b.  888  888
echo               888        888 "88b d88""88b d88""88b 88K      d8P  Y8b            888     888 "88b 888 88K               888    888     "88b 888  888
echo               888    888 888  888 888  888 888  888 "Y8888b. 88888888            888     888  888 888 "Y8888b.          888    888 .d888888 888  888
echo               Y88b  d88P 888  888 Y88..88P Y88..88P      X88 Y8b.                888     888  888 888      X88          888  .d88P 888  888 Y88b 888
echo                "Y8888P"  888  888  "Y88P"   "Y88P"   88888P'  "Y8888 88888888    888     888  888 888  88888P' 88888888 8888888P"  "Y888888  "Y88888
echo                                                                                                                                                 888
echo                                                                                                                                            Y8b d88P
echo                                                                                                                                             "Y88P"
echo.
timeout /t 3 >nul
cls
echo.
echo.
echo                .d8888b.  888                                                 88888888888 888      d8b                   8888888b.
echo               d88P  Y88b 888                                                     888     888      Y8P                   888  "Y88b
echo               888    888 888                                                     888     888                            888    888
echo               888        88888b.   .d88b.   .d88b.  .d8888b   .d88b.             888     88888b.  888 .d8888b           888    888  8888b.  888  888
echo               888        888 "88b d88""88b d88""88b 88K      d8P  Y8b            888     888 "88b 888 88K               888    888     "88b 888  888
echo               888    888 888  888 888  888 888  888 "Y8888b. 88888888            888     888  888 888 "Y8888b.          888    888 .d888888 888  888
echo               Y88b  d88P 888  888 Y88..88P Y88..88P      X88 Y8b.                888     888  888 888      X88          888  .d88P 888  888 Y88b 888
echo                "Y8888P"  888  888  "Y88P"   "Y88P"   88888P'  "Y8888 88888888    888     888  888 888  88888P' 88888888 8888888P"  "Y888888  "Y88888
echo                                                                                                                                                 888
echo                                                                                                                                            Y8b d88P
echo                                                                                                                                             "Y88P"
echo.
call :say ". . . . . . . . . . . . .By Cerafin C F" 1
echo.
echo.
echo.
timeout /t 2 >nul
echo Press any key to continue...
pause >nul

mode con: cols=90 lines=30

color 0f
cls
timeout /t 2 >nul
exit /b


rem ================= INTRO =================
:intro
cls
call :say "every day starts the same way." 1
timeout /t 4 >nul
call :say "small choices." 1
timeout /t 2 >nul
call :say "small delays." 1
timeout /t 1 >nul
call :say "most people never notice the pattern." 1
timeout /t 2 >nul
call :say "but this story does." 1
timeout /t 3 >nul
set /p name= your name: 
cls

call :say "all right, %name%." 1
timeout /t 2 >nul
call :say "even if the system calls you %username%..." 1
timeout /t 3 >nul
cls
call :say "now watch what happens. " 1
timeout /t 2 >nul
call :say "Its a story about a teen. " 1
timeout /t 2 >nul
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
timeout /t 3 >nul
call :say "the week is tired." 1
timeout /t 2 >nul
call :say "the mind is tired too." 1
timeout /t 2 >nul
call :say "school, phone, home, sleep." 1
timeout /t 1 >nul
call :say "nothing about the day seems important yet." 1
timeout /t 3 >nul
call :say "-" 1
call :say "-" 1
call :say "[Morning | 6.00 AM]" 1
timeout /t 2 >nul

goto weekday_flow

rem ================= SATURDAY =================
:saturday
call :say "saturday comes without a bell." 1
timeout /t 2 >nul
call :say "there is no school to hide behind." 1
timeout /t 3 >nul
call :say "the day stretches out." 1
call :say "-" 1
call :say "-" 1
timeout /t 2 >nul
call :say "[Morning | 6.00 AM]" 1
timeout /t 2 >nul

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

if !real!==1 (set /a good_total+=1 & call :comment_good & call :say "he moves before the excuse can grow." 1 & call :narrator !real!)
if !real!==2 (set /a bad_total+=1 & call :comment_bad & call :say "he watches time pass and calls it rest." 1 & call :narrator !real!)
if !real!==3 (set /a bad_total+=1 & call :comment_bad & call :say "he lets the morning go untouched." 1 & call :narrator !real! )


goto saturday_evening

:saturday_evening
call :say "-" 1
call :say "-" 1
call :say "Later that day" 1
timeout /t 1 >nul
call :say "[Evening | 5.00 PM]" 1
timeout /t 2 >nul
call :say "evening comes." 1
timeout /t 1 >nul
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

if !real!==1 (set /a good_total+=1 & call :comment_good & call :say "he prepares while there is still time to prepare." 1 & call :narrator !real!)
if !real!==2 (set /a bad_total+=1 & call :comment_bad & call :say "he delays again, as if delay is harmless." 1  & call :narrator !real!)
if !real!==3 (set /a bad_total+=1 & call :comment_bad & call :say "he chooses silence over change." 1 & call :narrator !real!)

goto night

rem ================= SUNDAY =================
:sunday
call :say "sunday is quieter than the rest." 1
timeout /t 2 >nul
call :say "but quiet does not mean peace." 1
timeout /t 3 >nul
call :say "sometimes it just means nothing is happening outside." 1
timeout /t 2 >nul
call :say "-" 1
call :say "-" 1
call :say "[Morning | 6.00 AM]" 1
timeout /t 2 >nul

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

if !real!==1 (set /a good_total+=1 & call :comment_good & call :say "he reflects before the thought escapes." 1 & call :narrator !real!)
if !real!==2 (set /a bad_total+=1 & call :comment_bad & call :say "he distracts himself and calls it balance." 1 & call :narrator !real!)
if !real!==3 (set /a bad_total+=1 & call :comment_bad & call :say "he looks away from the thing that matters." 1 & call :narrator !real!)

goto sunday_evening

:sunday_evening
call :say "-" 1
call :say "-" 1
call :say "[Evening | 7.00 PM]" 1
timeout /t 2 >nul

call :say "the weekend is almost gone." 1
timeout /t 2 >nul
call :say "tomorrow is already waiting." 1
timeout /t 2 >nul

call :shuffle_sun_evening

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

call :repeat_check sunday_evening !real!

if !real!==1 (
    set /a good_total+=1
    call :comment_good
    call :say "he prepares before the pressure arrives." 1
    call :narrator !real!
)

if !real!==2 (
    set /a bad_total+=1
    call :comment_bad
    call :say "he delays the thought until it grows heavier." 1
    call :narrator !real!
)

if !real!==3 (
    set /a bad_total+=1
    call :comment_bad
    call :say "he escapes into distraction one more time." 1
    call :narrator !real!
)

goto sunday_night

:sunday_night
call :say "night arrives." 1
call :say "the week stands there in pieces." 1
timeout /t 2 >nul
call :say "something has been learned." 1
goto evaluate

rem ================= WEEKDAY FLOW =================
:weekday_flow
call :say "morning starts before he is ready for it." 1
timeout /t 2 >nul
call :say "the alarm ends." 1
timeout /t 1 >nul
call :say "the phone begins." 1
timeout /t 3 >nul
call :say "one habit enters before the others can defend themselves." 1
timeout /t 2 >nul

call :shuffle_morning
echo.
echo what does he do?[type the choice number]
timeout /t 1 >nul
echo.
echo    1. !opt1!
echo    2. !opt2!
echo    3. !opt3!
echo.

choice /c 123 /n /m "choice:"
set "pick=!errorlevel!"
call set "real=%%map!pick!%%"

call :repeat_check morning !real!

if !real!==1 (set /a good_total+=1 & call :comment_good & call :say "he gets up before the loop fully closes." 1 & call :narrator !real!)
if !real!==2 (set /a bad_total+=1 & call :comment_bad & call :say "he stays half-awake and fully delayed." 1 & call :narrator !real!)
if !real!==3 (set /a bad_total+=1 & call :comment_bad & call :say "he remains where the habit left him." 1 & call :narrator !real! )

goto school

:school
call :say "school feels the same from the outside." 1
timeout /t 3 >nul
call :say "inside, a task is waiting." 1
timeout /t 2 >nul
call :say "unfinished things always wait more loudly." 1
timeout /t 2 >nul

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

if !real!==1 (set /a good_total+=1 & call :comment_good & call :say "he clears it now and removes the weight from later." 1 & call :narrator !real!)
if !real!==2 (set /a bad_total+=1 & call :comment_bad & call :say "he saves it for later, and later becomes heavier." 1 & call :narrator !real! )
if !real!==3 (set /a bad_total+=1 & call :comment_bad & call :say "he drops it from sight, not from consequence." 1 & call :narrator !real! )

goto night

rem ================= NIGHT =================
:night
call :say "night returns with the same face." 1
call :say "He says - tomorrow will be my day." 1
timeout /t 2 >nul
call :say "the sentence is familiar." 1
timeout /t 1 >nul
call :say "familiar is not the same as true." 1
timeout /t 5 >nul
goto day_start

rem ================= EVALUATION =================
:evaluate

if %bad_total% GEQ 5 goto loop_end
if %good_total% GEQ 5 goto disciplined_end

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
timeout /t 1 >nul
if %good_total%==2 call :say "/ that was not delayed. /" 1
if %good_total% GEQ 4 call :say "/ this is becoming a direction. /" 1
exit /b

:comment_bad
timeout /t 1 >nul
if %bad_total%==2 call :say "/ it happens again. /" 1
if %bad_total% GEQ 4 call :say "/ it is easier each time. /" 1
exit /b

rem ================= NARRATOR =================
:narrator
set "latest=%~1"
set /a mood=%good_total%-%bad_total%

if "!latest!"=="1" if %bad_total% GEQ 2 goto narrator_recovery

if %mood% GEQ 2 goto narrator_hopeful
if %mood% LEQ -2 goto narrator_heavy
goto narrator_calm

:narrator_calm
timeout /t 1 >nul
set /a nr=%random%%%5

if %nr%==0 call :say "[ the choice passes quietly. ]" 1
if %nr%==1 call :say "[ most habits never announce themselves. ]" 1
if %nr%==2 call :say "[ another small decision joins the pattern. ]" 1
if %nr%==3 call :say "[ routines grow before people notice them. ]" 1
if %nr%==4 call :say "[ nothing feels serious yet. ]" 1

exit /b

:narrator_heavy
set /a nr=%random%%%5

REM ===== DEEP BAD PATTERN -> POPUP =====
if %bad_total% GEQ 3 (
    if %nr%==0 call :popup "[ it becomes easier to repeat than resist. ]"
    if %nr%==1 call :popup "[ the excuse arrives faster this time. ]"
    if %nr%==2 call :popup "[ he already knows where this choice leads. ]"
    if %nr%==3 call :popup "[ delay is starting to feel natural. ]"
    if %nr%==4 call :popup "[ habits survive when nobody interrupts them. ]"
    exit /b
)

REM ===== EARLIER BAD STATE -> NORMAL TEXT =====
if %nr%==0 call :box "it becomes easier to repeat than resist."
if %nr%==1 call :box "the excuse arrives faster this time."
if %nr%==2 call :box "he already knows where this choice leads."
if %nr%==3 call :box "delay is starting to feel natural."
if %nr%==4 call :box "habits survive when nobody interrupts them."

exit /b

:narrator_hopeful
timeout /t 1 >nul
set /a nr=%random%%%5

if %nr%==0 call :say "[ something is changing slowly. ]" 1
if %nr%==1 call :say "[ discipline rarely looks dramatic. ]" 1
if %nr%==2 call :say "[ small corrections still matter. ]" 1
if %nr%==3 call :say "[ the routine bends a little. ]" 1
if %nr%==4 call :say "[ better choices are becoming less unfamiliar. ]" 1

exit /b
:narrator_recovery
set /a nr=%random%%%5

if %nr%==0 call :notify "the pattern weakens for a moment."
if %nr%==1 call :notify "not every habit survives resistance."
if %nr%==2 call :notify "this choice did not follow the others."
if %nr%==3 call :notify "the routine hesitates slightly."
if %nr%==4 call :notify "something pushed back this time."

exit /b

rem ================= SHUFFLES =================
:shuffle_morning
set "map1=1"
set "map2=2"
set "map3=3"
set "opt1=he gets up before the comfort pulls him back in"
set "opt2=he checks his phone for a few more minutes before starting the day"
set "opt3=he stays in bed and tells himself he still has time"
call :swap
call :swap
exit /b

:shuffle_school
set "map1=1"
set "map2=2"
set "map3=3"
set "opt1=he finishes the task now so it does not follow him home"
set "opt2=he tells himself he will deal with it later"
set "opt3=he avoids thinking about it and hopes it won't matter much."
call :swap
call :swap
exit /b

:shuffle_sat_morning
set "map1=1"
set "map2=2"
set "map3=3"
set "opt1=he uses the free morning to finally get something done"
set "opt2=he scrolls through his phone and lets the time pass"
set "opt3=he goes back to sleep and ignores what still needs to be done"
call :swap
call :swap
exit /b

:shuffle_sat_evening
set "map1=1"
set "map2=2"
set "map3=3"
set "opt1=he gets things ready for tomorrow before it gets late"
set "opt2=he keeps delaying it and tells himself there is still time"
set "opt3=he does nothing and hopes tomorrow will be easier"
call :swap
call :swap
exit /b

:shuffle_sun_morning
set "map1=1"
set "map2=2"
set "map3=3"
set "opt1=he sits quietly and thinks honestly about himself"
set "opt2=he distracts himself so he does not have to think too deeply"
set "opt3=he avoids the thoughts completely and calls it peace"
call :swap
call :swap
exit /b

:shuffle_sun_evening
set "map1=1"
set "map2=2"
set "map3=3"

set "opt1=he gets ready for the week before the night disappears"
set "opt2=he tells himself he still has enough time left"
set "opt3=he avoids thinking about tomorrow completely"

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

rem ================= notify=================
:notify
echo.
echo ===============================
echo   >>> %~1 <<<
echo ===============================
echo.
echo ^G
timeout /t 2 >nul
exit /b
rem ================= BOX NARRATOR =================
:box
timeout /t 1 >nul
echo.
echo +------------------------------------------------+
echo ^| %~1 ^|
echo +------------------------------------------------+
echo.
exit /b
rem ================= POPUP NARRATOR =================
:popup
setlocal
set "msg=%~1"

>nul powershell -Command ^
Add-Type -AssemblyName PresentationFramework; ^
[System.Windows.MessageBox]::Show('%msg%','Choose_This_Day','OK','Warning')

endlocal
exit /b

rem ================= TYPE =================
:say
setlocal EnableDelayedExpansion
set "msg=%~1"
set /a i=0

rem base speed ranges
set "min=60"
set "max=150"

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
timeout /t 3 >nul
call :say "not once." 1
timeout /t 2 >nul
call :say "not even when it was clearly visible." 1
timeout /t 3 >nul
call :say "the same choices returned, again and again," 1
timeout /t 1 >nul
call :say "until they stopped feeling like choices at all." 1
call :say "they became default." 1
call :say "automatic." 1
call :say "quiet.and..." 1
timeout /t 2 >nul
call :say "dangerous." 1
timeout /t 3 >nul
call :say "time moved forward." 1
call :say "but nothing inside him moved with it." 1
timeout /t 3 >nul
call :say "days passed." 1
timeout /t 1 >nul
call :say "then weeks." 1
timeout /t 1 >nul
call :say "and the pattern remained untouched." 1
timeout /t 3 >nul
call :say "he once said: tomorrow i will fix it." 1
call :say "now even that sentence is gone." 1
timeout /t 3 >nul
call :say "this is how it happens." 1
call :say "not with failure." 1
call :say "but with repetition." 1
timeout /t 3 >nul
call :say "-The soul of the sluggard craves and gets nothing, while the soul of the diligent is richly supplied.- (Proverbs 13:4)" 1
pause
cls
call :credits
exit


:disciplined_end
cls
call :say "something changed." 1
timeout /t 3 >nul
call :say "it was small enough to ignore." 1
call :say "but it was not ignored." 1
timeout /t 3 >nul
call :say "a single moment resisted the pattern." 1
call :say "then another." 1
call :say "not perfectly." 1
timeout /t 2 >nul
call :say "not consistently." 1
call :say "but enough." 1
timeout /t 3 >nul
call :say "discipline did not arrive as motivation." 1
timeout /t 2 >nul
call :say "it arrived as interruption." 1
call :say "a break in the automatic." 1
timeout /t 3 >nul
call :say "the delay was not allowed to win every time." 1
call :say "and that was new." 1
timeout /t 3 >nul
call :say "this is how it begins." 1
call :say "quiet." 1
call :say "unnoticed." 1
timeout /t 2 >nul
call :say "but real." 1
timeout /t 3 >nul
call :say "-God gave us a spirit not of fear but of power... and self-control.- (2 Timothy 1:7)" 1
pause
cls
call :credits
exit


:mixed_end
cls
call :say "it is not fixed." 1
call :say "that much is clear." 1
timeout /t 3 >nul
call :say "some choices resisted." 1
timeout /t 2 >nul
call :say "some choices repeated." 1
call :say "the pattern cracked," 1
timeout /t 2 >nul
call :say "but did not break." 1
timeout /t 3 >nul
call :say "he noticed it now." 1
timeout /t 1 >nul
call :say "that is the difference." 1
timeout /t 2 >nul
call :say "what was invisible is now seen." 1
timeout /t 3 >nul
call :say "and that is uncomfortable." 1
timeout /t 2 >nul
call :say "because now every delay feels deliberate." 1
timeout /t 1 >nul
call :say "every repeat feels chosen." 1
timeout /t 3 >nul
call :say "this is the middle." 1
call :say "not failure." 1
timeout /t 2 >nul
call :say "not victory." 1
timeout /t 2 >nul
call :say "but awareness." 1
timeout /t 1 >nul
call :say "and awareness does not let you go back unchanged." 1
timeout /t 3 >nul
call :say "-A double-minded man is unstable in all his ways.-(James 1:8)" 1
pause
cls
call :credits
exit
rem ================= CREDITS =================
:credits
call :say "-Twenty years from now you will be more disappointed by the things that you didn't do than by the ones you did do." 1
timeout /t 4 >nul
call :say "So throw off the bowlines." 1
timeout /t 1 >nul
call :say " Catch the trade winds in your sails." 1
timeout /t 1 >nul
call :say "Sail away from the safe harbor." 1
timeout /t 3 >nul
call :say "Explore." 1
timeout /t 1 >nul
call :say "Dream." 1
timeout /t 1 >nul
call :say "Discover." 1
timeout /t 3 >nul
cls
call :say "hey %name%, officially this story is over here... but.. your story continues." 1
timeout /t 2 >nul
call :say "Btw this story's ending differs from person to person." 1
timeout /t 1 >nul
cls
call :say "this story is fictional. none of these events are real, and any similarity is purely coincidental." 1
cls
call :say "Credits" 1
timeout /t 1 >nul
call :say "First of All, I'm Thanking God." 1
call :say "Through Jesus, this creation was made possible." 1
timeout /t 1 >nul
call :say "concept, design, narrative:" 1
call :say "Cerafin C F" 1
call :say "-" 1
timeout /t 1 >nul
call :say "ai collaboration and system support:" 1
call :say "ChatGPT by OpenAI" 1
call :say "-" 1
timeout /t 1 >nul
call :say "this script is not just code." 1
call :say "it is a reflection loop." 1
call :say "----------------------------------------" 1
pause
exit /b

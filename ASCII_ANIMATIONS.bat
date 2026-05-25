@echo off
REM ================= ASCII ANIMATION LIBRARY =================
REM This file contains enhanced ASCII animations for Choose_This_Day
REM Include this in your main script or integrate these subroutines

rem ================= CLOCK ANIMATION (Loading) =================
:anim_clock
setlocal enabledelayedexpansion
set "frames=3"
for /l %%i in (1,1,%frames%) do (
    cls
    if %%i==1 (
        echo.
        echo     [^|    ]
        echo.
    ) else if %%i==2 (
        echo.
        echo     [-    ]
        echo.
    ) else (
        echo.
        echo     [/    ]
        echo.
    )
    timeout /t 0 >nul
)
endlocal
exit /b

rem ================= PULSING DOT ANIMATION =================
:anim_pulse
setlocal enabledelayedexpansion
set "count=%~1"
if not defined count set "count=3"

for /l %%i in (1,1,%count%) do (
    cls
    echo.
    echo              ^.
    echo.
    timeout /t 0 >nul
    
    cls
    echo.
    echo              o
    echo.
    timeout /t 0 >nul
    
    cls
    echo.
    echo              O
    echo.
    timeout /t 0 >nul
)
endlocal
exit /b

rem ================= FALLING TEXT ANIMATION =================
:anim_fall_text
setlocal enabledelayedexpansion
set "text=%~1"
set "speed=%~2"
if not defined speed set "speed=5"

for /l %%i in (0,1,15) do (
    cls
    echo.
    for /l %%j in (1,1,%%i) do echo.
    echo              !text!
    echo.
    timeout /t 0 >nul
)
endlocal
exit /b

rem ================= MATRIX RAIN EFFECT =================
:anim_matrix_rain
setlocal enabledelayedexpansion
cls
set "lines=10"
set "width=40"

for /l %%f in (1,1,8) do (
    cls
    echo.
    for /l %%i in (1,1,%lines%) do (
        set /a pos=!random! %% %width%
        set "line="
        for /l %%j in (1,1,!pos!) do set "line=!line! "
        
        REM Generate random character
        set /a char=!random! %% 3
        if !char!==0 set "char=0"
        if !char!==1 set "char=1"
        if !char!==2 set "char=^|"
        
        echo !line!!char!
    )
    timeout /t 0 >nul
)
endlocal
exit /b

rem ================= HEARTBEAT ANIMATION =================
:anim_heartbeat
setlocal enabledelayedexpansion
set "beats=%~1"
if not defined beats set "beats=3"

for /l %%b in (1,1,%beats%) do (
    REM First beat
    cls
    echo.
    echo             ^<3
    echo.
    timeout /t 0 >nul
    
    cls
    echo.
    echo             ^<^3
    echo.
    timeout /t 0 >nul
    
    REM Recovery
    for /l %%r in (1,1,3) do (
        cls
        echo.
        echo.
        timeout /t 0 >nul
    )
)
endlocal
exit /b

rem ================= ASCENDING BARS =================
:anim_bars
setlocal enabledelayedexpansion
set "height=8"

for /l %%f in (1,1,12) do (
    cls
    echo.
    for /l %%h in (1,1,%height%) do (
        set /a filled=!random! %% 5
        
        if !filled!==0 (echo.   ^|       ^|       ^|) 
        if !filled!==1 (echo.   ^|^|      ^|^|      ^|)
        if !filled!==2 (echo.   ^|^|      ^|^|      ^|^|)
        if !filled!==3 (echo.   ^|^|^|     ^|^|^|     ^|^|^|)
        if !filled!==4 (echo.   ^|^|^|     ^|^|^|     ^|^|^|)
    )
    timeout /t 0 >nul
)
endlocal
exit /b

rem ================= WAVE ANIMATION =================
:anim_wave
setlocal enabledelayedexpansion
set "cycles=6"

for /l %%c in (1,1,%cycles%) do (
    for /l %%p in (0,1,10) do (
        cls
        echo.
        set "line=              "
        
        for /l %%i in (0,1,20) do (
            set /a height= ( %%i - %%p ) %% 6
            
            if !height!==0 (set "line=!line! ")
            if !height!==1 (set "line=!line!_")
            if !height!==2 (set "line=!line!^-")
            if !height!==3 (set "line=!line!^-")
            if !height!==4 (set "line=!line!_")
            if !height!==5 (set "line=!line! ")
        )
        echo !line!
        echo.
        timeout /t 0 >nul
    )
)
endlocal
exit /b

rem ================= SPIRAL ANIMATION =================
:anim_spiral
setlocal enabledelayedexpansion
set "frames=16"

for /l %%f in (0,1,%frames%) do (
    cls
    echo.
    echo.
    
    set /a mod=%%f %% 4
    
    if !mod!==0 echo              ^|
    if !mod!==1 echo              /
    if !mod!==2 echo              -
    if !mod!==3 echo              \
    
    echo.
    echo.
    timeout /t 0 >nul
)
endlocal
exit /b

rem ================= EXPANDING BOX =================
:anim_box_expand
setlocal enabledelayedexpansion
cls

for /l %%s in (1,1,8) do (
    cls
    echo.
    
    REM Top border
    set "top="
    for /l %%i in (1,1,%%s) do set "top=!top!-"
    echo              +!top!+
    
    REM Middle
    for /l %%m in (1,1,%%s) do echo              ^|!top!^|
    
    REM Bottom border
    echo              +!top!+
    echo.
    timeout /t 0 >nul
)
endlocal
exit /b

rem ================= BREATHING CIRCLE =================
:anim_breathing
setlocal enabledelayedexpansion
set "cycles=4"

for /l %%c in (1,1,%cycles%) do (
    for /l %%s in (1,1,5) do (
        cls
        echo.
        
        REM Build circle
        set "spaces="
        for /l %%i in (1,1,%%s) do set "spaces=!spaces! "
        
        echo              !spaces!o
        echo.
        timeout /t 0 >nul
    )
    
    for /l %%s in (5,-1,1) do (
        cls
        echo.
        
        set "spaces="
        for /l %%i in (1,1,%%s) do set "spaces=!spaces! "
        
        echo              !spaces!o
        echo.
        timeout /t 0 >nul
    )
)
endlocal
exit /b

rem ================= BOUNCING BALL =================
:anim_ball_bounce
setlocal enabledelayedexpansion
set "width=30"
set "bounces=4"

for /l %%b in (1,1,%bounces%) do (
    REM Left to right
    for /l %%p in (0,1,%width%) do (
        cls
        echo.
        set "line=              "
        for /l %%i in (1,1,%%p) do set "line=!line! "
        echo !line!o
        echo.
        timeout /t 0 >nul
    )
    
    REM Right to left
    for /l %%p in (%width%,-1,0) do (
        cls
        echo.
        set "line=              "
        for /l %%i in (1,1,%%p) do set "line=!line! "
        echo !line!o
        echo.
        timeout /t 0 >nul
    )
)
endlocal
exit /b

rem ================= TYPEWRITER INTRO (ENHANCED) =================
:anim_typewriter_intro
setlocal enabledelayedexpansion
set "text=%~1"
set "delay=%~2"
if not defined delay set "delay=50"

set /a i=0

:typewriter_loop
set "ch=!text:~%i%,1!"
if "!ch!"=="" goto typewriter_done

if "!ch!"==" " (
    <nul set /p "=X !BS! "
) else (
    <nul set /p "=!ch!"
)

timeout /t 0 >nul
set /a i+=1
goto typewriter_loop

:typewriter_done
echo.
endlocal
exit /b

rem ================= SCREEN GLITCH EFFECT =================
:anim_glitch
setlocal enabledelayedExpansion
set "text=%~1"
set "iterations=3"

for /l %%i in (1,1,%iterations%) do (
    cls
    echo !text!
    timeout /t 0 >nul
    
    cls
    REM Random corruption
    set /a rand=!random! %% 3
    if !rand!==0 echo. !text:~0,5!_[^@ERROR^]!text:~15!
    if !rand!==1 echo. [SIGNAL LOST]
    if !rand!==2 echo. !text!
    timeout /t 0 >nul
)
cls
echo !text!
endlocal
exit /b

rem ================= LOADING BAR =================
:anim_loading_bar
setlocal enabledelayedexpansion
set "length=20"

for /l %%p in (0,1,%length%) do (
    cls
    echo.
    echo              [
    
    set "bar="
    for /l %%i in (1,1,%%p) do set "bar=!bar!="
    
    set "spaces="
    for /l %%i in (%%p,1,%length%) do set "spaces=!spaces! "
    
    echo              !bar!!spaces!]
    
    set /a percent=%%p*100/%length%
    echo              !percent!%%
    echo.
    timeout /t 0 >nul
)
endlocal
exit /b

rem ================= MORSE CODE BLINK =================
:anim_morse_blink
setlocal enabledelayedexpansion
set "pattern=%~1"
if not defined pattern set "pattern=.-.-"

for /l %%i in (1,1,2) do (
    for /l %%c in (0,1,3) do (
        set "ch=!pattern:~%%c,1!"
        
        cls
        if "!ch!"=="." (
            echo              ^.
            timeout /t 0 >nul
        ) else if "!ch!"=="-" (
            echo              -
            timeout /t 0 >nul
        )
        
        cls
        echo.
        timeout /t 0 >nul
    )
)
endlocal
exit /b

rem ================= USAGE EXAMPLES FOR YOUR GAME =================
REM
REM In your boot_intro, replace the static ASCII with:
REM   call :anim_loading_bar
REM   
REM For day transitions, use:
REM   call :anim_breathing
REM
REM For endings, use:
REM   call :anim_pulse 5
REM
REM For choice moments, use:
REM   call :anim_wave
REM
REM Feel free to mix and match! Each animation can be customized
REM with the parameters. Most take optional duration/cycle counts.

@echo off

:check
if not "%~1"=="" (
    set desc=%1
    goto :file
) else (
    goto :check
)

:file
if not "%~2"=="" (
    set files=%~2
    goto :run
) else (
    set files=.
    goto :run
)

:run
    git add %files%
    git status
    git commit -m %desc%
    git push
    git pull
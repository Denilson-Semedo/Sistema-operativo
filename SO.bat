@echo off
:menu
cls
echo Menu
echo 1 - Gestao de processo
echo 2 - Gestao de memoria 
echo 3 - Terminal/Shell
echo 4 - Definicoes(*)
echo 5 - Sair
set /p op=
if %op% == 1 (
    goto :meges
)
if %op% == 2 (
    goto :meme
)
if %op% == 3 (
   goto :me1 
)
if %op% == 4 (
	if %y% == 1 (
		goto :def
	) else (
		start /b gplay wrong.mp3>nul 2>nul
		echo.
		echo ERRO!!!!!!
		echo Nao tens Permissao do Acesso!!
		call :pisca
		pause > nul
		goto menu
	)
    
)
if %op% == 5 (
    exit    
)
if %op% == 5 (
	goto def
)
if %op% gtr 5 (
    start /b gplay wrong.mp3>nul 2>nul
	call :pisca
    goto :menu    
)
if %op% lss 1 (
    start /b gplay wrong.mp3>nul 2>nul
	call :pisca
    goto :menu
)

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
   goto :terminal 
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
:meges
cls
echo Gestao de processo
echo 1 - Processos ativos
echo 2 - Suspender Processos 
echo 3 - Continuar um processo
echo 4 - Matar um Processos
echo 5 - Voltar para o menu principal
set /p op1= 
if %op1% == 1 (

    goto :meges
)
if %op1% == 4 (

    pause  
    goto :meges
)
if %op1% == 5 (
    goto :menu
)
if %op1% gtr 5 (
	start /b gplay wrong.mp3>nul 2>nul
	call :pisca
    goto :meges
)
if %op1% lss 1 (
    start /b gplay wrong.mp3>nul 2>nul
	call :pisca
    goto :meges
)
:meme
cls
echo Gestao de memoria
echo 1 - total de memoria
echo 2 - Memoria em uso 
echo 3 - Memoria Disponivel
echo 4 - Voltar para o menu principal
set /p op2= 

if %op2% == 1 (
    cls

    pause > nul
    goto :meme
)
if %op2% == 2 (
    cls

    pause > nul
    goto :meme
)
if %op2% == 3 (
    cls

    pause > nul
    goto :meme
)
if %op2% == 4 (
    goto :menu
)
if %op2% gtr 4 (
    start /b gplay wrong.mp3>nul 2>nul
	call :pisca
    goto :meme
)
if %op2% lss 1 (
    start /b gplay wrong.mp3>nul 2>nul
	call :pisca
    goto :meme
)
:terminal
    cls
    echo 1 - Powershell(*)
    echo 2 - Terminal do cmd
    echo 3 - Voltar para o menu principal
    set /p opp=
    if %opp% == 1 (
		if %y% == 1 (
			cls
			powershell
			goto :terminal
		) else (
			start /b gplay wrong.mp3>nul 2>nul
			echo.
			echo ERRO!!!!!!
			echo Nao tens Permissao do Acesso!!
			call :pisca
			pause > nul
			goto 
		) 
    )
    if %opp% == 2 (
        cls
        cmd
        goto :terminal
    )
    if %opp% == 3 (
        goto :menu
    )
    if %opp% lss 1 (
        start /b gplay wrong.mp3>nul 2>nul
	    call :pisca
        goto :terminal
    )
    if %opp% gtr 3 (
        start /b gplay wrong.mp3>nul 2>nul
	    call :pisca
        goto :terminal
    )
    :def
cls
echo DEFINICOES
echo 1 - Trocar Password
echo 2 - Mudar Cor
echo 3 - Voltar
set /p opd=
if %opd% lss 1 (
	start /b gplay wrong.mp3>nul 2>nul
	call :pisca
    goto :def	
)
if %opd% == 1 (
goto trocapass
)
if %opd% == 2 (
goto cor
) 
if %opd% == 3 (
goto menu
)
if %opd% gtr 3 (
	start /b gplay wrong.mp3>nul 2>nul
	call :pisca
    goto :def
	
)
:pisca
for /l %%i in (1 1 3) do (
color 0A
sleep 100
color 0C
sleep 100)
color 0A
exit /b
    


@echo off
pause > nul
::inicializa��o
:inicio
set /p admin1name=<admini1name.txt
set /a admin1pass=9453
set /a normal=0
set /a administrador=1
set /a som=0
if %som%==0 (
    ::Reproduz o ficheiro .mp3 que se encontra na mesma pasta que o codigo
    start /b gplay Microsoft.mp3>nul 2>nul
)
::codigo para fazer o efeito de imagen piscando                                
for /l %%i in (1 1 5) do (
color 07
sleep 300
color 01
sleep 300 )
color 07
::
:logar
echo.
echo.
echo.
echo.
echo                                                                                            ====================                                                                                                                 
echo                                                                                                [1-Entrar]   
echo                                                                                               [2-Registar]  
set /p log=*                                                                                         

if %log% lss 1 (
    if %som% equ 0 (
        start /b gplay wrong.mp3>nul 2>nul
    )
    call pisca
    goto :logar
    echo
)
if %log% gtr 2 (
    if %som% equ 0 (
        start /b gplay wrong.mp3>nul 2>nul
    )
    call pisca
    cls
    goto :logar2
    echo
)
if %log% equ 1 (
    goto :entrar
)
if %log% equ 2 (
    goto :registar
)


:logar2
echo                                                                                            ====================                                                                                                                 
echo                                                                                                [1-Entrar]   
echo                                                                                               [2-Registar]  
set /p log=*                                                                                         

if %log% lss 1 (
    if %som% equ 0 (
        start /b gplay wrong.mp3>nul 2>nul
    )
    call pisca
    goto :logar
)
if %log% gtr 2 (
    if %som% equ 0 (
        start /b gplay wrong.mp3>nul 2>nul
    )
    call pisca
    cls
    goto :logar2
)
if %log% equ 1 (
    goto :entrar
)
if %log% equ 2 (
    goto :registar
)

::Entrar
:entrar
echo                                                                                    ===============================
set /p user=*                                                                                       Username: 
EditV64 -p "                                                                                        Password: " -m pass 
if %user%==%admin1name% (
    if %pass%==%admin1pass% (
        goto :menu
    ) else (
        if exist %user%%pass%.txt (
            goto :welcome
            sleep 600
            goto :menu
        ) else (
            call :pisca
            cls
            goto :logar2
        )
    )
)
if exist %user%%pass%.txt (
    goto :welcome
    sleep 600
    goto :menu
) else (
    call :pisca
    cls
    goto :logar2
)

 

::Registar
:registar
echo                                                                                    ===============================
set /p user=*                                                                                     Username: 
EditV64 -p "                                                                                      Password: " -m pass 
echo 0 >>%user%%pass%.txt
echo *                                                                                    Conta criada com sucesso
call :welcome




::#############################################
:menu
cls
echo         _________________________
echo                   MENU
echo         -------------------------
echo         [1] Gest�o de processo
echo         [2] Gest�o de mem�ria 
echo         [3] Terminal/Shell
echo         [4] Defini��es(*)
echo         _________
echo         [5] Sair
set /p op=         *
if %op% == 1 (
    pssuspend -r <notepad.exe>
    goto :gesprocessos
)
if %op% == 2 (
    goto :gesmemoria
)
if %op% == 3 (
   goto :terminal 
)
if %op% == 4 (
    goto :settings
)        
if %op% == 5 (
    echo.
    echo Adeus!
    pause > nul
    exit    
)
if %op% gtr 5 (
    if %som%==0 (
    start /b gplay wrong.mp3>nul 2>nul
    )
	call :pisca
    goto :menu    
)
if %op% lss 1 (
    if %som%==0 (
    start /b gplay wrong.mp3>nul 2>nul
    )
	call :pisca
    goto :menu
)
::Gestao de Processos
:gesprocessos
cls
echo         _____________________________
echo              GEST�O DE PROCESSOS
echo         -----------------------------
echo         [1] Processos ativos
echo         [2] Suspender Processos
echo         [3] Continuar um processo
echo         [4] Matar um Processo
echo         __________
echo         [5] Voltar
set /p op1=         * 
if %op1% == 1 (
    ::Apresenta uma lista de processos ativos e depois encerra o processo inserido pelo utilizador
    TASKLIST /FI "STATUS EQ RUNNING"
    pause
    goto :gesprocessos
)
if %op1% == 4 (
    ::Apresenta uma lista de processos ativos e depois encerra o processo inserido pelo utilizador
    TASKLIST /FI "STATUS EQ RUNNING"
    set /p x=Qual processo desejas matar? 
	set /a x1=%x%
     TASKKILL /F /IM %x% /T
    pause  
    goto :gesprocessos
)
if %op1% == 5 (
    goto :menu
)
if %op1% gtr 5 (
	if %som%==0 (
    start /b gplay wrong.mp3>nul 2>nul
    )
	call :pisca
    goto :gesprocessos
)
if %op1% lss 1 (
    if %som%==0 (
    start /b gplay wrong.mp3>nul 2>nul
    )
	call :pisca
    goto :gesprocessos
)
:gesmemoria
::Gest�o de mem�ria
:meme
cls
echo         _________________________
echo             GEST�O DE MEM�RIA
echo         -------------------------
echo         [1] Total de mem�ria
echo         [2] Mem�ria em uso 
echo         [3] Mem�ria Dispon�vel
echo         ___________
echo         [4] Voltar 
set /p op2=         * 

if %op2% == 1 (
    cls
    goto :memoriatotal
)
if %op2% == 2 (
    cls
    goto :memoriaemuso
)
if %op2% == 3 (
    cls
    goto :memoriadisponivel
)
if %op2% == 4 (
    goto :menu
)
if %op2% gtr 4 (
    if %som%==0 (
    start /b gplay wrong.mp3>nul 2>nul
    )
	call :pisca
    goto :gesmemoria
)
if %op2% lss 1 (
    if %som%==0 (
    start /b gplay wrong.mp3>nul 2>nul
    )
	call :pisca
    goto :gesmemoria
)
::Memoria Total
:memoriatotal
echo         _________________________
echo             GEST�O DE MEM�RIA
echo         -------------------------
echo.
::Utilizamos o ciclo for pra extrair os dados necessarios no comando "Systeminfo"
for /f "tokens=4,5 delims=, " %%i in ('systeminfo.exe ^| find "Total Physical Memory"') do set RAM_SIZE=%%i%%j
echo         [Mem�ria total]: %RAM_SIZE%
pause > nul
goto :gesmemoria
::Memoria Em uso
:memoriadisponivel
echo         _________________________
echo             GEST�O DE MEM�RIA
echo         -------------------------
echo.
for /f "tokens=4,5 delims=, " %%i in ('systeminfo.exe ^| find "Available Physical Memory:"') do set RAM_DIS=%%i%%j
echo         [Mem�ria dispon�vel]: %RAM_DIS%
pause > nul
goto :gesmemoria
::Memoria Disponivel
:memoriaemuso
echo         _________________________
echo             GEST�O DE MEM�RIA
echo         -------------------------
echo.
for /f "tokens=4,5 delims=, " %%i in ('systeminfo.exe ^| find "Total Physical Memory"') do set RAM_SIZE=%%i%%j
for /f "tokens=4,5 delims=, " %%i in ('systeminfo.exe ^| find "Available Physical Memory:"') do set RAM_DIS=%%i%%j
set /a RAM_USE=RAM_SIZE-RAM_DIS
echo         [Mem�ria em uso]: %RAM_USE%
pause > nul
goto :gesmemoria
::Terminal
:terminal
    cls
    echo         _____________________
    echo               TERMINAIS
    echo         ---------------------
    echo         [1] Powershell(*)
    echo         [2] Terminal do cmd
    echo         ___________
    echo         [3] Voltar
    set /p opp=         *
    if %opp% == 1 (
        cls
		powershell
		goto :terminal
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
        if %som%==0 (
        start /b gplay wrong.mp3>nul 2>nul
        )
	    call :pisca
        goto :terminal
    )
    if %opp% gtr 3 (
        if %som%==0 (
        start /b gplay wrong.mp3>nul 2>nul
        )
	    call :pisca
        goto :terminal
    )
::Definic�es onde somente o administrador tem acesso
:def
cls
echo         ______________________
echo              DEFINI��ES
echo         ----------------------
echo         [1] Trocar Password
echo         [2] Mudar Cor
if %som% == 0 (
    echo         [3] Desativar som    
)
if %som% == 1 (
    echo         [3] Ativar som   
)
echo         [4] Eliminar Conta
echo         ___________ 
echo         [5] Voltar
set /p opd=         *
if %opd% lss 1 (
	if %som%==0 (
    start /b gplay wrong.mp3>nul 2>nul
    )
	call :pisca
    goto :def	
)
if %opd% == 1 (
goto :trocapass
)
if %opd% == 2 (
goto cor
) 
if %opd% == 3 (
    if %som%==1 (
        set /a som=0
    )
    if %som%==0 (
        set /a som=1
    )
    goto def
)
if %opd% == 4 (
goto eliminar
) 
if %opd% == 5 (
goto menu
)
if %opd% gtr 5 (
	if %som%==0 (
    start /b gplay wrong.mp3>nul 2>nul
    )
	call :pisca
    goto :def
	
)
::codigo para fazer o efeito de pisca
:pisca
for /l %%i in (1 1 3) do (
color 0A
sleep 100
color 0C
sleep 100)
color 0A
exit /b
:cor
cls
echo         _________________
echo               MODOS
echo         -----------------
echo         [1] Padr�o
echo         [2] Modo Nocturno
echo         [3] Modo Hacker
echo         [4] Shacks
echo         ___________
echo         [5] Voltar
set /p opcor=         *
if %opcor% == 1 (
color 70
goto cor
)
if %opcor% == 2 (
color 07
goto cor
)
if %opcor% == 3 (
color 0a
goto cor
)
if %opcor% == 4 (
color 7d
goto cor
)
if %opcor% == 5 (
goto def
)
if %opcor% lss 1(
	if %som%==0 (
    start /b gplay wrong.mp3>nul 2>nul
    )
	call :pisca
    goto :cor
)
if %opcor% gtr 5 (
    if %som%==0 (
    start /b gplay wrong.mp3>nul 2>nul
    )
	call :pisca
    goto :cor
)
::Sair
:exit
echo.
echo Adeus!
pause > nul
exit


:welcome
cls
                                                                                                 
echo                                                                                      ==============WELCOME==============     
sleep 2000
goto menu      


:settings
if %user% equ %admin1name% (
    if %pass% equ %admin1pass% (
        goto :def
    ) else goto :permissao
) else goto :permissao

:permissao
echo 1-[Continuar]
echo 2-[Cancelar]
set /p confirmacao=*
if %confirmacao% equ 1 (
    echo Insira dados administrador para prosseguir
    set /p adminname=Username: 
    EditV64 -p "Password: " -m adminpass
    call :procura
)
if %confirmacao% equ 2 (
    goto :menu
) else goto :permissao



:procura
if %adminname% equ %admin1name% (
    if %adminpass% equ %admin1pass% (
        goto :def
    ) else (
        if exist %adminname%%adminpass%.txt (
            echo Este usuario nao � um administrador!
            pause
            goto :permissao
        ) else (
            echo Este usuario n�o existe!!
            pause
            goto:permissao
        )
    )
) else (
    if exist %adminname%%adminpass%.txt (
        echo Este usuario n�o � um administrador!
        pause
        goto :permissao
    ) else (
        echo Este usuario n�o existe!!
        pause
        goto:permissao
    )
)


:trocapass
EditV64 -p "Insira a palavra passe atual: " -m oldpass
if %oldpass% equ %pass% (
    call :novo
    goto :menu
)
:novo
EditV64 -p "Insira a nova palavra passe: " -m newpass1
EditV64 -p "Confirme a nova palavra passe: " -m newpass
if %newpass% equ %newpass1% (
    del %user%%pass%.txt
    echo %user%%newpass%.txt
    echo 0 >> %user%%newpass%.txt
    echo Palavra passe mudada com sucesso!
    pause > nul
)
:eliminar
cls 
echo         ____________________
echo            ELIMINAR CONTA
echo         --------------------
echo         Insira os dados da conta que desejas eliminar
set /p conta=          User:
EditV64 -p "         Password: " -m codigo  
if exist %conta%%codigo%.txt (
del %conta%%codigo%.txt
echo         Conta eliminada com sucesso
pause > nul
goto def
) else (
echo         Dados introduzido incorretamente!
call pisca
pause > nul
goto eliminar
)       
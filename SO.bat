@echo off
pause > nul
::inicialização
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
sleep 400 
echo.
echo.
echo.
echo.
echo.
echo.                                                                                        
echo                                                                                               ```....```                                                     
echo                                                                                         `.-:/++++++++++++/:-.                                                
echo                                                                                       .+++++++++++++++++++++++:.                                             
echo                                                                                       /+++++++++++++++++++++++++`                                            
echo                                                                                      .+++++++++++++++++++++++++-   .:.                                       
echo                                                                                      /+++++++++++++++++++++++++`   /++/:-.`            `..-:/                
echo                                                                                     -+++++++++++++++++++++++++.   -++++++++//::---::///+++++-                
echo                                                                                    `+++++++++++++++++++++++++/   `+++++++++++++++++++++++++/                 
echo                                                                                    :+++++++++++++++++++++++++.   :+++++++++++++++++++++++++.                 
echo                                                                                   .+++++++++++++++++++++++++:   .+++++++++++++++++++++++++:                  
echo                                                                                   /+++++++++++++++++++++++++`   /+++++++++++++++++++++++++`                  
echo                                                                                  -+++++++++++++++++++++++++-   -+++++++++++++++++++++++++-                   
echo                                                                                 `/++///:-..`````..-:/+++++/   `/++++++++++++++++++++++++/`                   
echo                                                                                 .-.``               ``-:/+.   :+++++++++++++++++++++++++.                    
echo                                                                                   ...-:///+++//::-.`    `.   `+++++++++++++++++++++++++/                     
echo                                                                                -:/+oooooooooooooooo+/:.`     ./++++++++++++++++++++++++.                     
echo                                                                               .oooooooooooooooooooooooo+-     `.:/+++++++++++++++++//:.                      
echo                                                                               +oooooooooooooooooooooooo+.`      ``.-::////////::-.``                         
echo                                                                               -ooooooooooooooooooooooooo:   .::-.                    .:                       
echo                                                                             `+oooooooooooooooooooooooo+`   :::::::--.::::::::...---::-                        
echo                                                                             :ooooooooooooooooooooooooo-   .:::::::::::::::::::::::::`                        
echo                                                                            `ooooooooooooooooooooooooo+   `:::::::::::::::::::::::::-                         
echo                                                                            /ooooooooooooooooooooooooo.   -:::::::::::::::::::::::::`                         
echo                                                                           .ooooooooooooooooooooooooo/   `:::::::::::::::::::::::::.                          
echo                                                                           /ooooooooooooooooooooooooo`   -:::::::::::::::::::::::::`                          
echo                                                                          -oooooo++++////++ooooooooo:   .:::::::::::::::::::::::::.                           
echo                                                                          +/:-..``         `.-/+ooo+`   :::::::::::::::::::::::::-                            
echo                                                                                                .-/-   .:::::::::::::::::::::::::`                            
echo                                                                                                      `:::::::::::::::::::::::::-                             
echo                                                                                                       `.-:::::::::::::::::::::-`                             
echo                                                                                                           ..-:::::::::::--..`
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
echo.
echo.
echo.
echo.
echo.
echo.                                                                                        
echo                                                                                               ```....```                                                     
echo                                                                                         `.-:/++++++++++++/:-.                                                
echo                                                                                       .+++++++++++++++++++++++:.                                             
echo                                                                                       /+++++++++++++++++++++++++`                                            
echo                                                                                      .+++++++++++++++++++++++++-   .:.                                       
echo                                                                                      /+++++++++++++++++++++++++`   /++/:-.`            `..-:/                
echo                                                                                     -+++++++++++++++++++++++++.   -++++++++//::---::///+++++-                
echo                                                                                    `+++++++++++++++++++++++++/   `+++++++++++++++++++++++++/                 
echo                                                                                    :+++++++++++++++++++++++++.   :+++++++++++++++++++++++++.                 
echo                                                                                   .+++++++++++++++++++++++++:   .+++++++++++++++++++++++++:                  
echo                                                                                   /+++++++++++++++++++++++++`   /+++++++++++++++++++++++++`                  
echo                                                                                  -+++++++++++++++++++++++++-   -+++++++++++++++++++++++++-                   
echo                                                                                 `/++///:-..`````..-:/+++++/   `/++++++++++++++++++++++++/`                   
echo                                                                                 .-.``               ``-:/+.   :+++++++++++++++++++++++++.                    
echo                                                                                   ...-:///+++//::-.`    `.   `+++++++++++++++++++++++++/                     
echo                                                                                -:/+oooooooooooooooo+/:.`     ./++++++++++++++++++++++++.                     
echo                                                                               .oooooooooooooooooooooooo+-     `.:/+++++++++++++++++//:.                      
echo                                                                               +oooooooooooooooooooooooo+.`      ``.-::////////::-.``                         
echo                                                                               -ooooooooooooooooooooooooo:   .::-.                    .:                       
echo                                                                             `+oooooooooooooooooooooooo+`   :::::::--.::::::::...---::-                        
echo                                                                             :ooooooooooooooooooooooooo-   .:::::::::::::::::::::::::`                        
echo                                                                            `ooooooooooooooooooooooooo+   `:::::::::::::::::::::::::-                         
echo                                                                            /ooooooooooooooooooooooooo.   -:::::::::::::::::::::::::`                         
echo                                                                           .ooooooooooooooooooooooooo/   `:::::::::::::::::::::::::.                          
echo                                                                           /ooooooooooooooooooooooooo`   -:::::::::::::::::::::::::`                          
echo                                                                          -oooooo++++////++ooooooooo:   .:::::::::::::::::::::::::.                           
echo                                                                          +/:-..``         `.-/+ooo+`   :::::::::::::::::::::::::-                            
echo                                                                                                .-/-   .:::::::::::::::::::::::::`                            
echo                                                                                                      `:::::::::::::::::::::::::-                             
echo                                                                                                       `.-:::::::::::::::::::::-`                             
echo                                                                                                           ..-:::::::::::--..`
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
echo         [1] Gestao de processo
echo         [2] Gestao de memoria 
echo         [3] Terminal/Shell
echo         [4] Definicoes(*)
echo         _________
echo         [5] Sair
set /p op=         *
if %op% == 1 (
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
echo              GESTAO DE PROCESSOS
echo         -----------------------------
echo         [1] Processos ativos
echo         [2] Suspender Processos 
echo         [3] Continuar um processo
echo         [4] Matar um Processos
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
::Gestão de memória
:meme
cls
echo         _________________________
echo             GESTAO DE MEMORIA
echo         -------------------------
echo         [1] Total de memoria
echo         [2] Memoria em uso 
echo         [3] Memoria Disponivel
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
echo             GESTAO DE MEMORIA
echo         -------------------------
echo.
::Utilizamos o ciclo for pra extrair os dados necessarios no comando "Systeminfo"
for /f "tokens=4,5 delims=, " %%i in ('systeminfo.exe ^| find "Total Physical Memory"') do set RAM_SIZE=%%i%%j
echo         [Memoria total]: %RAM_SIZE%
pause > nul
goto :gesmemoria
::Memoria Em uso
:memoriadisponivel
echo         _________________________
echo             GESTAO DE MEMORIA
echo         -------------------------
echo.
for /f "tokens=4,5 delims=, " %%i in ('systeminfo.exe ^| find "Available Physical Memory:"') do set RAM_DIS=%%i%%j
echo         [Memoria disponivel]: %RAM_DIS%
pause > nul
goto :gesmemoria
::Memoria Disponivel
:memoriaemuso
echo         _________________________
echo             GESTAO DE MEMORIA
echo         -------------------------
echo.
for /f "tokens=4,5 delims=, " %%i in ('systeminfo.exe ^| find "Total Physical Memory"') do set RAM_SIZE=%%i%%j
for /f "tokens=4,5 delims=, " %%i in ('systeminfo.exe ^| find "Available Physical Memory:"') do set RAM_DIS=%%i%%j
set /a RAM_USE=RAM_SIZE-RAM_DIS
echo         [Memoria em uso]: %RAM_USE%
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
::Definicões onde somente o administrador tem acesso
:def
cls
echo         ______________________
echo              DEFINICOES
echo         ----------------------
echo         [1] Trocar Password
echo         [2] Mudar Cor
if %som% == 0 (
    echo         [3] Desativar som    
)
if %som% == 1 (
    echo         [3] Ativar som   
)
echo         ___________ 
echo         [4] Voltar
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
goto menu
)
if %opd% gtr 4 (
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
echo         [1] Padrao
echo         [2] Modo Nocturno
echo         [3] Modo Hacker
echo         ___________
echo         [4] Voltar
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
goto def
)
if %opcor% lss 1(
	if %som%==0 (
    start /b gplay wrong.mp3>nul 2>nul
    )
	call :pisca
    goto :cor
)
if %opcor% gtr 4 (
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
echo.
echo.
echo.
echo.
echo.
echo.                                                                                        
echo                                                                                               ```....```                                                     
echo                                                                                         `.-:/++++++++++++/:-.                                                
echo                                                                                       .+++++++++++++++++++++++:.                                             
echo                                                                                       /+++++++++++++++++++++++++`                                            
echo                                                                                      .+++++++++++++++++++++++++-   .:.                                       
echo                                                                                      /+++++++++++++++++++++++++`   /++/:-.`            `..-:/                
echo                                                                                     -+++++++++++++++++++++++++.   -++++++++//::---::///+++++-                
echo                                                                                    `+++++++++++++++++++++++++/   `+++++++++++++++++++++++++/                 
echo                                                                                    :+++++++++++++++++++++++++.   :+++++++++++++++++++++++++.                 
echo                                                                                   .+++++++++++++++++++++++++:   .+++++++++++++++++++++++++:                  
echo                                                                                   /+++++++++++++++++++++++++`   /+++++++++++++++++++++++++`                  
echo                                                                                  -+++++++++++++++++++++++++-   -+++++++++++++++++++++++++-                   
echo                                                                                 `/++///:-..`````..-:/+++++/   `/++++++++++++++++++++++++/`                   
echo                                                                                 .-.``               ``-:/+.   :+++++++++++++++++++++++++.                    
echo                                                                                   ...-:///+++//::-.`    `.   `+++++++++++++++++++++++++/                     
echo                                                                                -:/+oooooooooooooooo+/:.`     ./++++++++++++++++++++++++.                     
echo                                                                               .oooooooooooooooooooooooo+-     `.:/+++++++++++++++++//:.                      
echo                                                                               +oooooooooooooooooooooooo+.`      ``.-::////////::-.``                         
echo                                                                               -ooooooooooooooooooooooooo:   .::-.                    .:                       
echo                                                                             `+oooooooooooooooooooooooo+`   :::::::--.::::::::...---::-                        
echo                                                                             :ooooooooooooooooooooooooo-   .:::::::::::::::::::::::::`                        
echo                                                                            `ooooooooooooooooooooooooo+   `:::::::::::::::::::::::::-                         
echo                                                                            /ooooooooooooooooooooooooo.   -:::::::::::::::::::::::::`                         
echo                                                                           .ooooooooooooooooooooooooo/   `:::::::::::::::::::::::::.                          
echo                                                                           /ooooooooooooooooooooooooo`   -:::::::::::::::::::::::::`                          
echo                                                                          -oooooo++++////++ooooooooo:   .:::::::::::::::::::::::::.                           
echo                                                                          +/:-..``         `.-/+ooo+`   :::::::::::::::::::::::::-                            
echo                                                                                                .-/-   .:::::::::::::::::::::::::`                            
echo                                                                                                      `:::::::::::::::::::::::::-                             
echo                                                                                                       `.-:::::::::::::::::::::-`                             
echo                                                                                                           ..-:::::::::::--..`
echo.
echo.
echo.
echo.                                                                                                 
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
            echo Este usuario nao eh um administrador!
            pause
            goto :permissao
        ) else (
            echo Este usuaria nao existe!!
            pause
            goto:permissao
        )
    )
) else (
    if exist %adminname%%adminpass%.txt (
        echo Este usuario nao eh um administrador!
        pause
        goto :permissao
    ) else (
        echo Este usuaria nao existe!!
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
@echo off
mode 500,300
pause > nul
::inicialização
:inicio
set /p admin1name=<admini1name.txt
set /p admin1pass=<admini1pass.txt
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
cmdMenuSel f870 "                                                                                                  ENTRAR" "                                                                                                   SAIR"
if %ERRORLEVEL% == 1 goto :entrar
if %ERRORLEVEL% == 2 exit
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
color 07
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
cmdMenuSel f870 "                                                                                                  ENTRAR" "                                                                                                   SAIR"
if %ERRORLEVEL% == 1 goto :entrar
if %ERRORLEVEL% == 2 exit
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
        call welcome
        goto :menu
    ) else (
        if exist Users\%user%%pass%.txt (
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
if exist Users\%user%%pass%.txt (
    goto :welcome
    sleep 600
    goto :menu
) else (
    call :pisca
    cls
    goto :logar2
)


::#############################################
:menu
mode 60,44
cls
echo _________________________
echo          MENU
echo -------------------------
echo [1] Gestão de processo
echo [2] Gestão de memória 
echo [3] Terminal/Shell
echo [4] Definições(*)
echo _________
echo [5] Sair
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
echo _____________________________
echo       GESTÃO DE PROCESSOS
echo -----------------------------
echo [1] Listar processos
echo [2] Suspender Processos
echo [3] Continuar um processo
echo [4] Matar um Processo
echo __________
echo [5] Voltar
set /p op1=* 
if %op1% == 1 (
    ::Apresenta uma lista de processos ativos e depois encerra o processo inserido pelo utilizador
    goto :subges
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
     echo %user%   ^|  Matou o processo %x1%  ^|   %date%   ^|   %time% >>Registos.txt
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
:subges
cls
echo _____________________________
echo       LISTAR PROCESSOS
echo -----------------------------
echo [1] Todos
echo [2] Ativos
echo [3] Suspensos
echo [4] PID maior que 100
echo [5] Memoria utilizada maior que 50000 kb
echo __________
echo [6] Voltar
set /p opa=*
if %opa% == 1 (
    echo %user%   ^|   Listar processos Todos  ^|   %date%   ^|   %time% >>Registos.txt
    TASKLIST 
    PAUSE > NUL
    goto :subges
)

if %opa% == 2 (
    TASKLIST /FI "STATUS EQ RUNNING"
    echo %user%   ^|   Listar processos Ativos    ^|    %date%   ^|   %time% >>Registos.txt
    PAUSE > NUL
goto :subges    
)
if %opa% == 3 (
    TASKLIST /FI "STATUS EQ SUSPENDED" 
    echo %user%   ^|   Listar processos Suspensos  ^|   %date%    ^|    %time% >>Registos.txt
    PAUSE > NUL
    goto :subges    
)
if %opa% == 4 (
    TASKLIST /FI "PID gt 100" 
    echo %user%   ^|   Listar processos Pid maior que 100  ^|   %date%   ^|   %time% >>Registos.txt
    PAUSE > NUL
    goto :subges    
)
if %opa% == 5 (
    TASKLIST /FI "MEMUSAGE gt 50000" 
    echo %user%   ^|   Listar processos Memoria utilizada maior que 50000 kb   ^|   %date%   ^|   %time% >>Registos.txt
    PAUSE > NUL
    goto :subges    
)
if %opa% == 6 (
    goto :gesprocessos
)
if %opa% gtr 6 (
	if %som%==0 (
        start /b gplay wrong.mp3>nul 2>nul
    )
	call :pisca
    goto :subges
)
if %opa% lss 1 (
    if %som%==0 (
        start /b gplay wrong.mp3>nul 2>nul
    )
	call :pisca
    goto :subges
)
:gesmemoria
::Gestão de memória
:meme
cls
echo _________________________
echo     GESTÃO DE MEMÓRIA
echo -------------------------
echo [1] Total de memória
echo [2] Memória em uso 
echo [3] Memória Disponível
echo ___________
echo [4] Voltar 
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
echo _________________________
echo    GESTÃO DE MEMÓRIA
echo -------------------------
echo.
::Utilizamos o ciclo for pra extrair os dados necessarios no comando "Systeminfo"
for /f "tokens=4,5 delims=, " %%i in ('systeminfo.exe ^| find "Total Physical Memory"') do set RAM_SIZE=%%i%%j
echo [Memória total]: %RAM_SIZE%
echo %user%   ^|  Memoria Total  ^|   %date%   ^|   %time% >>Registos.txt
pause > nul
goto :gesmemoria


::Memoria Em uso
:memoriadisponivel
echo _________________________
echo     GESTÃO DE MEMÓRIA
echo -------------------------
echo.
for /f "tokens=4,5 delims=, " %%i in ('systeminfo.exe ^| find "Available Physical Memory:"') do set RAM_DIS=%%i%%j
echo [Memória disponível]: %RAM_DIS%
echo %user%   ^|  Memoria Disponivel  ^|   %date%   ^|   %time% >>Registos.txt
pause > nul
goto :gesmemoria


::Memoria Disponivel
:memoriaemuso
echo _________________________
echo     GESTÃO DE MEMÓRIA
echo -------------------------
echo.
for /f "tokens=4,5 delims=, " %%i in ('systeminfo.exe ^| find "Total Physical Memory"') do set RAM_SIZE=%%i%%j
for /f "tokens=4,5 delims=, " %%i in ('systeminfo.exe ^| find "Available Physical Memory:"') do set RAM_DIS=%%i%%j
set /a RAM_USE=RAM_SIZE-RAM_DIS
echo [Memória em uso]: %RAM_USE%
echo %user%   ^|  Memoria Em uso  ^|   %date%   ^|   %time% >>Registos.txt
pause > nul
goto :gesmemoria


::Terminal
:terminal
    cls
    echo _____________________
    echo       TERMINAIS
    echo ---------------------
    echo [1] Powershell(*)
    echo [2] Terminal do cmd
    echo ___________
    echo [3] Voltar
    set /p opp=         *
    if %opp% == 1 (
        cls
        echo %user%   ^|  Abriu O Powershell  ^|   %date%   ^|   %time% >>Registos.txt
		powershell
        echo %user%   ^|  Fechou O Powershell  ^|   %date%   ^|   %time% >>Registos.txt
		goto :terminal
    )
    if %opp% == 2 (
        cls
        echo %user%   ^|  Abriu o Terminal do cmd  ^|   %date%   ^|   %time% >>Registos.txt
        cmd
        echo %user%   ^|  Fechou o Terminal do cmd  ^|   %date%   ^|   %time% >>Registos.txt
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


::Definicões onde somente o administrador ou quem for permitido por ele tem acesso
:def
echo %user%   ^|   Acessou as Definicões    ^|    %date%   ^|   %time% >>Registos.txt
cls
echo ______________________
echo       DEFINIÇÕES
echo ----------------------
echo [1] Trocar Password
echo [2] Mudar Cor
if %som% == 0 (
    echo [3] Desativar som    
)
if %som% == 1 (
    echo [3] Ativar som   
)
echo [4] Eliminar Conta
echo [5] Criar Conta
echo ___________ 
echo [6] Voltar
set /p opd=         *
if %opd% lss 1 (
	if %som%==0 (
    start /b gplay wrong.mp3>nul 2>nul
    )
	call :pisca
    goto :def	
)
if %opd% == 1 (
    echo %user%   ^|   Acessou a Trocar Password    ^|    %date%   ^|   %time% >>Registos.txt
    goto :trocapass
)
if %opd% == 2 (
    echo %user%   ^|   Acessou a Mudar Cor    ^|    %date%   ^|   %time% >>Registos.txt
    goto :cor
) 
if %opd% == 3 (
    if %som%==1 (
        set /a som=0
        echo %user%   ^|    Ativou o som    ^|    %date%   ^|   %time% >>Registos.txt
    )
    if %som%==0 (
        set /a som=1
        echo %user%   ^|   Desativou o som    ^|    %date%   ^|   %time% >>Registos.txt
    )
    goto def
)
if %opd% == 4 (
    goto :eliminar
) 
if %opd% == 5 (
    goto :registar
)
if %opd% == 6 (
    goto :menu
)
if %opd% gtr 6 (
	if %som%==0 (
    start /b gplay wrong.mp3>nul 2>nul
    )
	call :pisca
    goto :def
	
)


::Registar
:registar
:fase1
cls
echo        Criar Novo Usuario
echo  ===============================
set /p newuser=Username: 
if exist Users\%newuser%.txt (
    echo Ja existe uma conta com esse nome!
    goto :fase1
) else (
    goto :fase2
)

:fase2
EditV64 -p "Password: " -m pass0
EditV64 -p "Confirmar Password: " -m pass1
if %pass0% equ %pass1% (
    echo 0 >>%newuser%.txt
    echo %pass0% >>%newuser%pass.txt 
    move %newuser%.txt Users >nul
    move %newuser%pass.txt Users >nul
    echo Conta criada com sucesso!
    echo %user%   ^|  Criou a conta %newuser%  ^|   %date%   ^|   %time% >>Registos.txt
    pause > nul
    if %user% equ %admin1name% (
        goto :def
    ) else goto :menu
) else (
    echo As Passwords nao sao iguais!
    pause > nul
    goto :fase2
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
echo _________________
echo       MODOS
echo -----------------
echo [1] Padrão
echo [2] Modo Nocturno
echo [3] Modo Hacker
echo [4] Shaks mode
echo ___________
echo [5] Voltar
set /p opcor=         *
if %opcor% == 1 (
    color 70
    echo %user%   ^|   Definiu Modo Padrão    ^|    %date%   ^|   %time% >>Registos.txt
    goto cor
)
if %opcor% == 2 (
    color 07
    echo %user%   ^|   Definiu Modo Nocturno    ^|    %date%   ^|   %time% >>Registos.txt
    goto cor
)
if %opcor% == 3 (
    color 0a
    echo %user%   ^|   Definiu Modo Hacker    ^|    %date%   ^|   %time% >>Registos.txt
    goto cor
)
if %opcor% == 4 (
    color 7d
    echo %user%   ^|   Definiu Modo Shaks    ^|    %date%   ^|   %time% >>Registos.txt
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
            echo Este usuario nao é um administrador!
            pause
            goto :permissao
        ) else (
            echo Este usuario não existe!!
            pause
            goto:permissao
        )
    )
) else (
    if exist %adminname%%adminpass%.txt (
        echo Este usuario não é um administrador!
        pause
        goto :permissao
    ) else (
        echo Este usuario não existe!!
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
    del Users\%user%%pass%.txt > nul
    echo 0 >> Users\%user%%newpass%.txt
    echo Palavra passe mudada com sucesso!
    echo %user%   ^|   Mudou a Password    ^|    %date%   ^|   %time% >>Registos.txt
    pause > nul
    goto :menu
)


:eliminar
cls 
echo ____________________
echo    ELIMINAR CONTA
echo --------------------
echo Insira os dados da conta que desejas eliminar
set /p conta=User:
EditV64 -p "Password: " -m codigo
if exist Users\%conta%%codigo%.txt (
    del Users\%conta%%codigo%.txt
    echo Conta eliminada com sucesso
    echo %user%   ^|   Eliminou a conta %conta%   ^|    %date%   ^|   %time% >>Registos.txt
    pause > nul
    goto :def
) else (
    echo Dados introduzido incorretamente!
    call pisca
    pause > nul
    goto :def
)       
# Configuration

My personal development environment configuration.

## Windows

### Fonts

    # Fira Code
    https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/FiraCode.zip

### Powershell

    # Windows Terminal settings
    curl.exe -o $Env:LOCALAPPDATA\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json https://raw.githubusercontent.com/ksjbrown/dotenv/main/wt/settings.json

    # Windows Powershell allow script execution
    Set-ExecutionPolicy RemoteSigned

    # Windows Powershell extensions
    PowerShellGet\Install-Module posh-git -Scope CurrentUser -Force
    winget install JanDeDobbeleer.OhMyPosh -s winget

    # Windows Powershell profile
    curl.exe -o $profile https://raw.githubusercontent.com/ksjbrown/dotenv/main/pwsh/Microsoft.PowerShell_profile.ps1

    # Apply VS Code settings, keybinds and extensions
    curl.exe -o $Env:APPDATA\Code\User\settings.json https://raw.githubusercontent.com/ksjbrown/dotenv/main/vscode/settings.json
    curl.exe -o $Env:APPDATA\Code\User\keybindings.json https://raw.githubusercontent.com/ksjbrown/dotenv/main/vscode/keybindings.json
    curl.exe https://raw.githubusercontent.com/ksjbrown/dotenv/main/vscode/extensions.txt |% { code --install-extension $_}

### Update VS Code Settings

    # Powershell
    cp $Env:APPDATA\Code\User\settings.json .\vscode\settings.json
    cp $Env:APPDATA\Code\User\keybindings.json .\vscode\keybindings.json
    code --list-extensions > .\vscode\extensions.txt


## WSL

### Bash

    # Extensions
    curl -s https://ohmyposh.dev/install.sh | sudo bash -s

### Append to .bashrc

    # Windows shell aliases
    alias pwsh='powershell.exe'
    alias cmd='cmd.exe'

    # enable oh-my-posh
    eval "$(oh-my-posh init bash --config 'https://raw.githubusercontent.com/ksjbrown/devenv/main/omp/themes/wopian_keegs.omp.json')"


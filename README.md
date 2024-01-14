# Configuration

My personal development environment configuration.

## Wallpapers

    # appa silhouette evening
    https://64.media.tumblr.com/e78bdb757ab7ac3a78384b957e3ce9e6/tumblr_osgh9hzvoY1sriwu3o2_1280.jpg

    # appa silhouette night
    https://64.media.tumblr.com/5cca98e8ba55694207116d006fa15e2f/tumblr_osgh9hzvoY1sriwu3o1_1280.jpg

    # ciri
    https://wallpaperwaifu.com/wp-content/uploads/2023/03/ciri-the-witcher-3-wild-hunt-thumb.jpg

    # jinx
    https://raw.githubusercontent.com/ksjbrown/devenv/main/wallpapers/jinx.jpg

    # jinx_vi
    https://raw.githubusercontent.com/ksjbrown/devenv/main/wallpapers/jinx_vi.jpg

    # loba
    https://raw.githubusercontent.com/ksjbrown/devenv/main/wallpapers/loba.jpg

    # octane vs rev, bloodhound, pathfinder
    https://pbs.twimg.com/media/EkynJ2sW0AExGic?format=jpg&name=4096x4096

    # revenant
    https://raw.githubusercontent.com/ksjbrown/devenv/main/wallpapers/revenant.jpg

## Windows Terminal

    cp wt\settings.json $Env:LOCALAPPDATA\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json

## Windows Powershell

### Extensions

#### posh-git 

    PowerShellGet\Install-Module posh-git -Scope CurrentUser -Force

#### oh-my-posh 

    winget install JanDeDobbeleer.OhMyPosh -s winget

#### lazygit 

    winget install lazygit

### Enable Profile Execution

    Set-ExecutionPolicy RemoteSigned

### Profile

    cp pwsh\Microsoft.PowerShell_profile.ps1 $profile
    . $profile

## Windows Subsystem for Linux

### Extensions

    # oh my posh
    curl -s https://ohmyposh.dev/install.sh | sudo bash -s

### Append to .bashrc

    # Windows shell aliases
    alias pwsh='powershell.exe'
    alias cmd='cmd.exe'

    # enable oh-my-posh
    eval "$(oh-my-posh init bash --config 'https://raw.githubusercontent.com/ksjbrown/devenv/main/omp/themes/wopian_keegs.omp.json')"
    

## Neovim

### Install

#### Windows

    winget install Neovim.Neovim
    winget install lazygit

#### WSL

    curl -o ~/.local/bin/nvim.appimage -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
    chmod u+x ~/.local/bin/nvim.appimage

    # lazygit extension
    LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
    curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
    tar xf lazygit.tar.gz lazygit
    sudo install lazygit /usr/local/bin

##### Append to .bashrc

    # nvim alias
    alias nvim='~/.local/bin/nvim.appimage'


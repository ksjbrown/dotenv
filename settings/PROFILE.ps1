# install PsReadLine
# Install-Module -Name PowerShellGet -Force
# Install-Module PSReadLine

# tab complete bash style
Set-PSReadlineKeyHandler -Chord Tab -Function Complete
Set-PSReadlineOption -BellStyle None

# load extensions
Import-Module posh-git
oh-my-posh init pwsh --config 'https://raw.githubusercontent.com/ksjbrown/dotenv/main/omp/themes/keegan.omp.json' | Invoke-Expression
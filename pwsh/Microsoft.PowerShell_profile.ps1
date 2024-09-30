# tab complete bash style
Set-PSReadlineKeyHandler -Key Tab -Function Complete
Set-PSReadlineOption -BellStyle None

# hide venv prompt, handled by ohmyposh
$Env:VIRTUAL_ENV_DISABLE_PROMPT=1

# load extensions
Import-Module posh-git
oh-my-posh init pwsh --config 'https://raw.githubusercontent.com/ksjbrown/dotenv/main/omp/themes/keegan.omp.json' | Invoke-Expression
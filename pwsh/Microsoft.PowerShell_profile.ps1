# tab complete bash style
Set-PSReadlineKeyHandler -Key Tab -Function Complete
Set-PSReadlineOption -BellStyle None

# load extensions
Import-Module posh-git
oh-my-posh init pwsh --config 'https://raw.githubusercontent.com/ksjbrown/devenv/main/omp/themes/wopian_keegs.omp.json' | Invoke-Expression
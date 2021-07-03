function Get-IsElevated {
    $id = [System.Security.Principal.WindowsIdentity]::GetCurrent()
    $p = New-Object System.Security.Principal.WindowsPrincipal($id)
    if ($p.IsInRole([System.Security.Principal.WindowsBuiltInRole]::Administrator))
    { Write-Output $true }      
    else
    { Write-Output $false }   
}

function Install-IfNotInstalled {
    param (
        [string]$package
    )

    if ("$(winget list --id $package)".Contains("--")) { 
        Write-Host "$package is already installed!" -ForegroundColor Green
    }
    else {
        Write-Host "Attempting to install: $package..." -ForegroundColor Yellow
        winget install $package
    }
}

if (-not(Get-IsElevated)) { 
    throw "Please run this script as an administrator" 
}

if (-not $(Get-Command winget)) {
    Start-Process "https://github.com/microsoft/winget-cli/releases"
    return
}

Install-IfNotInstalled OpenJS.NodeJS
Install-IfNotInstalled Netease.CloudMusic
Write-Host "Setting up some node js global tools..." -ForegroundColor Yellow
npm install --global npm@latest
npx @nondanee/unblockneteasemusic
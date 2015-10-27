Param(
    [Parameter(Mandatory=$True,Position=1)]
        [string]$Algorithm,

    [Parameter(Mandatory=$True,Position=2)]
        [string]$Path,

    [Parameter(Mandatory=$True,Position=3)]
        [string]$inputHash
)
$calcHash = Get-FileHash -Algorithm $Algorithm -Path $Path | Select -ExpandProperty Hash
If ($calcHash -eq $inputHash) {
    Write-Host "Success! The file's $Algorithm hash equals the same one you provided."
} else { Write-Host "Crickey! The hashes don't match! If you are sure you provided the proper input hash, then somone or something has messed up your file."}
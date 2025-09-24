Param(
    [Hashtable]$parameters
)

function DumpApps($name) {
    Write-Host "$name to deliver:"
    if ($parameters.ContainsKey($name)) {
        Get-ChildItem -Path $parameters."$name" | ForEach-Object {
            Write-Host "- $($_.Name)"
        }
    }
}

Write-Host "Current project path: $($parameters.project)"
Write-Host "Current project name: $($parameters.projectName)"
Write-Host "Delivery Type (CD or Release): $($parameters.type)"
Write-Host "Delivery Context: $($parameters.context)"

DumpApps -name "appsFolder"
DumpApps -name "testAppsFolder"
DumpApps -name "dependenciesFolder"

Write-Host "Repository settings:"
$parameters.RepoSettings | Out-Host

Write-Host "Project settings:"
$parameters.ProjectSettings | Out-Host

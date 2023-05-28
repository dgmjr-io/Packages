param(
    [ValidatSet('Debug', 'Local', 'Staging', 'Production', 'Release', $null)]
    [Paraemeter(Mandatory = $false)]
    [string]
    $DeploymentType = $null
)
$DeploymentType ??= "Local"
Set-Location -Path $PSScriptRoot/../Prototype
Copy-Item -Path Packages ../Packages -Recurse -Force
Copy-Item -Path Packages ../Versions -Recurse -Force
<# Copy the files for "Debug" deployment #>
Copy-Item -Path Versions.Debug.json ../Versions.Debug.Json -Force
Copy-Item -Path Versions.Debug.props ../Versions.Debug.props -Force
<# Copy the files for "Local" deployment #>
Copy-Item -Path Versions.Local.json ../Versions.Local.Json -Force
Copy-Item -Path Versions.Local.props ../Versions.Local.props -Force
<# Copy the files for "Staging" deployment #>
Copy-Item -Path Versions.Staging.json ../Versions.Staging.Json -Force
Copy-Item -Path Versions.Staging.props ../Versions.Staging.props -Force
<# Copy the files for "Production" deployment #>
Copy-Item -Path Versions.Production.json ../Versions.Production.Json -Force
Copy-Item -Path Versions.Production.props ../Versions.Production.props -Force
<# Copy the files for "Release" deployment #>
Copy-Item -Path Versions.Release.json ../Versions.Release.Json -Force
Copy-Item -Path Versions.Release.props ../Versions.Release.props -Force
<# Copy RemoveUnsupportedPackages.target #>
Copy-Item -Path ./RemoveUnsupportedPackageVersions.targets ../RemoveUnsupportedPackageVersionstargets

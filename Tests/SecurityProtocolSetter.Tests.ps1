$ModuleName = "SecurityProtocolSetter";
$ModulePath = "$PSScriptRoot\..\$ModuleName"
Import-Module $ModulePath -Force;

Describe "SecurityProtocolSetter module behaviour" {
    $ModuleInfo = Get-Module -Name $ModuleName;
    $expectedCommands = (Get-ChildItem $ModulePath -File -Recurse | Where-Object { $_.DirectoryName -match "Public" } | Select-Object -ExpandProperty BaseName);
    $expectedAliases = @{'setsp' = 'Set-SecurityProtocol'};

    It 'Exports all expected commands' {
        foreach ($command in $expectedCommands) {
            $ModuleInfo.ExportedFunctions.ContainsKey($command) | Should Be $True;
        }
    }
    
    It 'Exports all expected aliases' {
        foreach ($alias in $expectedAliases.GetEnumerator()) {
            $ModuleInfo.ExportedAliases.ContainsKey($alias.Name) | Should Be $True;
            $ModuleInfo.ExportedAliases[$alias.Name].Definition | Should Be $alias.Value;
        }
    }
}
Import-Module "$PSScriptRoot\..\..\SecurityProtocolSetter" -Force;

Describe "Set-SecurityProtocol" {

    BeforeEach {
        [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::SystemDefault;
    }

    Context "When no arguments were passed" {
        
        It "Resets the security protocol" {
            $expectedProtocolType = [Net.SecurityProtocolType]::SystemDefault;
            Set-SecurityProtocol
            [Net.ServicePointManager]::SecurityProtocol | Should Be $expectedProtocolType
        }
    }

    Context "When a string was passed as an argument" {
        
        It "Changes the security protocol to the specified protocol type" {
            $expectedProtocolType = [Net.SecurityProtocolType]::Tls12;
            Set-SecurityProtocol Tls12
            [Net.ServicePointManager]::SecurityProtocol | Should Be $expectedProtocolType
        }
    }
    
    Context "When an unknown security protocol was passed as an argument" {
        It "The command should fail with an error" {
            { Set-SecurityProtocol "UnknownArgument" } | Should -Throw;
        }

        It "The command should leave the security protocol unchanged" {
            $expectedProtocolType = [Net.ServicePointManager]::SecurityProtocol;
            { Set-SecurityProtocol "UnknownArgument" }
            [Net.ServicePointManager]::SecurityProtocol | Should Be $expectedProtocolType;
        }
    }
}
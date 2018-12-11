<#
.SYNOPSIS
Sets the security protocol used by ServicePointManager

.DESCRIPTION
Sets the security protocol used by Net.ServicePointManger class.

.EXAMPLE
C:PS> Set-SecurityProtocol

Sets the security protocol to "SystemDefault"

.EXAMPLE
C:PS> Set-SecurityProtocol Tls12

Sets the security protocol to TLS 1.2
#>
function Set-SecurityProtocol {
    param (
        # Specifies the name of the security protocol. The name should correspond to the members of the Net.SecurityProtocolType enum. If a name was not specified, the security protocol will be set to "SystemDefault".
        [Parameter(Position=0)]
        [string]
        $Name = "SystemDefault"
    )

    $targetProtocol = [Enum]::Parse([Net.SecurityProtocolType], $Name, $true);
    [Net.ServicePointManager]::SecurityProtocol = $targetProtocol;
}
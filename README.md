![SecurityProtocolSetter icon](./Assets/SecurityProtocolSetter-icon.png)

# SecurityProtocolSetter

[![Build Status](https://dev.azure.com/azuredevops-powershell/security-protocol-setter-powershell/_apis/build/status/security-protocol-setter-powershell-ci)](https://dev.azure.com/azuredevops-powershell/security-protocol-setter-powershell/_build/latest?definitionId=2)
[![Azure DevOps Tests](https://img.shields.io/azure-devops/tests/azuredevops-powershell/security-protocol-setter-powershell/2.svg?logo=azuredevops)](https://dev.azure.com/azuredevops-powershell/security-protocol-setter-powershell/_build/latest?definitionId=2)
[![Azure DevOps Coverage](https://img.shields.io/azure-devops/coverage/azuredevops-powershell/security-protocol-setter-powershell/2.svg?logo=azuredevops)](https://dev.azure.com/azuredevops-powershell/security-protocol-setter-powershell/_build/latest?definitionId=2)
[![Azure DevOps Release - PowerShell Gallery](https://vsrm.dev.azure.com/azuredevops-powershell/_apis/public/Release/badge/ef9d2cde-2e58-47fa-9089-fcc3e9b3e902/1/1)](https://dev.azure.com/azuredevops-powershell/security-protocol-setter-powershell/_release/)
[![Security Protocol Setter](https://img.shields.io/powershellgallery/v/SecurityProtocolSetter.svg)](https://www.powershellgallery.com/packages/SecurityProtocolSetter)

This is a very simple module that sets the service protocol used by the `ServicePointManager` class.

## Motivation

It's hard to remember the exact line of code to set the security protocol, this module simply provides a shortcut.

## Installation

```powershell
Install-Module SecurityProtocolSetter
```

## Usage

```powershell
Import-Module SecurityProtocolSetter

# Set security protocol to TLS 1.1
Set-SecurityProtocol Tls11

# Set security protocol to TLS 1.2
Set-SecurityProtocol Tls12

# Use the alias
setsp Tls12

# More details...
Get-Help Set-SecurityProtocol -Detailed
```

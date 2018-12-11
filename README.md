# SecurityProtocol

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

# More details...
Get-Help Set-SecurityProtocol -Detailed
```
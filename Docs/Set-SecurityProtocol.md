---
external help file: SecurityProtocolSetter-help.xml
Module Name: SecurityProtocolSetter
online version:
schema: 2.0.0
---

# Set-SecurityProtocol

## SYNOPSIS
Sets the security protocol used by ServicePointManager

## SYNTAX

```
Set-SecurityProtocol [[-Name] <String>] [<CommonParameters>]
```

## DESCRIPTION
Sets the security protocol used by Net.ServicePointManger class.

## EXAMPLES

### EXAMPLE 1
```
Set-SecurityProtocol
```

Sets the security protocol to "SystemDefault"

### EXAMPLE 2
```
Set-SecurityProtocol Tls12
```

Sets the security protocol to TLS 1.2

## PARAMETERS

### -Name
Specifies the name of the security protocol.
The name should correspond to the members of the Net.SecurityProtocolType enum.
If a name was not specified, the security protocol will be set to "SystemDefault".

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: SystemDefault
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable.
For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

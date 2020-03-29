$ts = Get-WmiObject Win32_TerminalServiceSetting -ComputerName localhost -Namespace ROOT\CIMV2\TerminalServices
if (!$ts.AllowTSConnections){
	Write-Output "RDP not enabled"
}else{
	Write-Output "RDP enabled"
}
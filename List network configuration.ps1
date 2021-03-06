#This code demonstrates how to list Computer System information for the local system  
#without any plug-ins.  
# 
#To run this script within your environment you should only need to copy and paste this script into 
#either Windows Powershell ISE or PowerGUI Script Editor,(http://powergui.org) with the following 
#changes to the script which I have numbered below.   
#  1.) You may also need to install Microsoft Update "http://support.microsoft.com/kb/968930". 
# 
# You may change the "." to a computer name, (example: "ComputerName") to get remote system information 
 
$strComputer = "." 
$objWin32NAC = Get-WmiObject -Class Win32_NetworkAdapterConfiguration -namespace "root\CIMV2" -computername $strComputer -Filter "IPEnabled = 'True'" 
foreach ($objNACItem in $objWin32NAC) 
{ 
  Write-Host "Caption:" $objNACItem.Caption 
  Write-Host "DefaultIPGateway:" $objNACItem.DefaultIPGateway 
  Write-Host "Description:" $objNACItem.Description 
  Write-Host "DHCPEnabled:" $objNACItem.DHCPEnabled 
  Write-Host "DHCPLeaseExpires:" $objNACItem.DHCPLeaseExpires 
  Write-Host "DHCPLeaseObtained:" $objNACItem.DHCPLeaseObtained 
  Write-Host "DHCPServer:" $objNACItem.DHCPServer 
  Write-Host "DNSDomain:" $objNACItem.DNSDomain 
  Write-Host "DNSDomainSuffixSearchOrder:" $objNACItem.DNSDomainSuffixSearchOrder 
  Write-Host "DNSEnabledForWINSResolution:" $objNACItem.DNSEnabledForWINSResolution 
  Write-Host "DNSHostName:" $objNACItem.DNSHostName 
  Write-Host "DNSServerSearchOrder:" $objNACItem.DNSServerSearchOrder 
  Write-Host "DomainDNSRegistrationEnabled:" $objNACItem.DomainDNSRegistrationEnabled 
  Write-Host "FullDNSRegistrationEnabled:" $objNACItem.FullDNSRegistrationEnabled 
  Write-Host "GatewayCostMetric:" $objNACItem.GatewayCostMetric 
  Write-Host "Index:" $objNACItem.Index 
  Write-Host "IPAddress:" $objNACItem.IPAddress 
  Write-Host "IPConnectionMetric:" $objNACItem.IPConnectionMetric 
  Write-Host "IPEnabled:" $objNACItem.IPEnabled 
  Write-Host "IPFilterSecurityEnabled:" $objNACItem.IPFilterSecurityEnabled 
#  Write-Host "IPPortSecurityEnabled:" $objNACItem.IPPortSecurityEnabled 
#  Write-Host "IPSecPermitIPProtocols:" $objNACItem.IPSecPermitIPProtocols 
#  Write-Host "IPSecPermitTCPPorts:" $objNACItem.IPSecPermitTCPPorts 
#  Write-Host "IPSecPermitUDPPorts:" $objNACItem.IPSecPermitUDPPorts 
  Write-Host "IPSubnet:" $objNACItem.IPSubnet 
  Write-Host "IPXAddress:" $objNACItem.IPXAddress 
  Write-Host "IPXEnabled:" $objNACItem.IPXEnabled 
  Write-Host "IPXFrameType:" $objNACItem.IPXFrameType 
  Write-Host "IPXMediaType:" $objNACItem.IPXMediaType 
  Write-Host "IPXNetworkNumber:" $objNACItem.IPXNetworkNumber 
  Write-Host "IPXVirtualNetNumber:" $objNACItem.IPXVirtualNetNumber 
  Write-Host "MACAddress:" $objNACItem.MACAddress 
  Write-Host "ServiceName:" $objNACItem.ServiceName 
  Write-Host "TcpipNetbiosOptions:" $objNACItem.TcpipNetbiosOptions 
  Write-Host "WINSEnableLMHostsLookup:" $objNACItem.WINSEnableLMHostsLookup 
#  Write-Host "WINSHostLookupFile:" $objNACItem.WINSHostLookupFile 
  Write-Host "WINSPrimaryServer:" $objNACItem.WINSPrimaryServer 
  Write-Host "WINSSecondaryServer:" $objNACItem.WINSSecondaryServer 
 
}

#Auto-generated from: c:\edn\wfb\ch1\wfb-24g-tcp-bidir-1c-10s.wml
#At: 2017-05-28 10:24:22.821000
keylset global_config ChassisName {10.88.1.100}

#License Keys for running tests beyond the basic benchmarking tests

#keylset global_config LicenseKey {#####-#####-##### #####-#####-#####}
keylset global_config Direction {Bidirectional}
keylset global_config Channel {1}
keylset global_config Source {Eth1}
keylset global_config Destination {RF}

#Traffics Global Options

keylset global_config IncrDestPort True
keylset global_config IncrSourcePort True
keylset global_config TrafficType Tcp
keylset global_config PayloadData None
keylset global_config DestinationPort 1024
keylset global_config SourcePort 1024

#TestParameters Global Options

keylset global_config TrialDuration 60
keylset global_config TestDurationSec 0
keylset global_config RandomSeed 1142638611
keylset global_config TestDurationMin 1

#Connection Global Options


#LogsAndResultsInfo Global Options

keylset global_config dbusername veriwave
keylset global_config LogsDir C:/edn/wfb/results
keylset global_config dbpassword veriwave
keylset global_config dbname veriwave

#Learning Global Options


#Mapping Options
keylset global_config FlowType TCP

#Wireless Group Count
keylset global_config WirelessGroupCount 1

#Tests - you may define more than one in a TCL list.
keylset global_config TestList {tcp_goodput}

#Group Eth1
keylset Eth1 GroupType 802.3
keylset Eth1 Dut generic_dut_1

#Group Eth1 - Client Options
keylset Eth1 Hops -1
keylset Eth1 MacAddressMode Increment
keylset Eth1 GratuitousArp True
keylset Eth1 MacAddress a0:00:00:00:00:01
keylset Eth1 Gateway 192.168.1.1
keylset Eth1 MacAddressIncr 1
keylset Eth1 phyInterface 802.11ag
keylset Eth1 MgmtPhyRate 24
keylset Eth1 Qos Disable
keylset Eth1 BaseIp 192.168.1.10

#Group Eth1 - Security Options
keylset Eth1 Method {None}
keylset Eth1 EnableValidateCertificate off

#Group RF
keylset RF GroupType 802.11ac
keylset RF Dut generic_dut_0

#Group RF - Client Options
keylset RF Ssid Fios-DYF8B
keylset RF GratuitousArp True
keylset RF KeepAlive True
keylset RF MacAddress None
keylset RF PlcpConfiguration mixed
keylset RF ChannelBandwidth 40
keylset RF EnableAMSDUrxaggregation True
keylset RF EnableAMPDUaggregation True
keylset RF EnableAMSDUtxaggregation False
keylset RF ChannelModel Bypass
keylset RF DataMcsIndex 23
keylset RF EnableLDPC False
keylset RF GuardInterval short
keylset RF Gateway 192.168.1.1
keylset RF NumTxAntennas 4
keylset RF phyInterface 802.11n
keylset RF MgmtPhyRate 24
keylset RF TxPower 6
keylset RF Qos Disable
keylset RF BaseIp 192.168.1.12

#Group RF - Security Options
keylset RF Method {WPA2-PSK}
keylset RF EnableValidateCertificate off
keylset RF PskAscii 12345678

#tcp_goodput Options
keylset tcp_goodput Test tcp_goodput
keylset tcp_goodput FrameSizeList {536 1460}
keylset tcp_goodput NumOfSessionPerClient 10
keylset tcp_goodput TcpWindowSize 2097152
keylset tcp_goodput AcceptableGoodput 0

#Port list for port specific options
keylset global_config Ports {generic_dut_0 generic_dut_1 generic_dut_2 generic_dut_3 generic_dut_4 generic_dut_5 generic_dut_6 generic_dut_7 generic_dut_8}

#Generic Dut Definitions

#Generic Dut - generic_dut_0
keylset generic_dut_0 used True
keylset generic_dut_0 Vendor generic
keylset generic_dut_0 WLANSwitchSWVersion None
keylset generic_dut_0 APSWVersion None
keylset generic_dut_0 APModel None
keylset generic_dut_0 Interface.802_11ac.BindStatus True
keylset generic_dut_0 Interface.802_11ac.WavetestPort 10.88.1.100:3:1
keylset generic_dut_0 Interface.802_11ac.ChannelBandwidth 20
keylset generic_dut_0 Interface.802_11ac.HighPerformance on
keylset generic_dut_0 Interface.802_11ac.InterfaceType 802.11ac
keylset generic_dut_0 Interface.802_11ac.EnableRxAttenuation off
keylset generic_dut_0 Interface.802_11ac.SecondaryChannelPlacement defer
keylset generic_dut_0 Interface.802_11ac.CaptureMode reduced
keylset generic_dut_0 Interface.802_11ac.PartCode 2A04400780000000
keylset generic_dut_0 Interface.802_11ac.IncludeRFLogging off
keylset generic_dut_0 Interface.802_11ac.VkIndex 0
keylset generic_dut_0 Interface.802_11ac.Channel 1
keylset generic_dut_0 Interface.802_11ac.EnableFollowApBandwidth 1
keylset generic_dut_0 WLANSwitchModel None

#Generic Dut - generic_dut_1
keylset generic_dut_1 used True
keylset generic_dut_1 Vendor generic
keylset generic_dut_1 WLANSwitchSWVersion None
keylset generic_dut_1 APSWVersion None
keylset generic_dut_1 APModel None
keylset generic_dut_1 Interface.802_3.BindStatus True
keylset generic_dut_1 Interface.802_3.WavetestPort 10.88.1.100:1:2
keylset generic_dut_1 Interface.802_3.EthernetSpeed 100
keylset generic_dut_1 Interface.802_3.Duplex full
keylset generic_dut_1 Interface.802_3.Autonegotiation on
keylset generic_dut_1 Interface.802_3.HighPerformance on
keylset generic_dut_1 Interface.802_3.InterfaceType 802.3
keylset generic_dut_1 Interface.802_3.EnableRxAttenuation on
keylset generic_dut_1 Interface.802_3.SecondaryChannelPlacement defer
keylset generic_dut_1 Interface.802_3.CaptureMode normal
keylset generic_dut_1 Interface.802_3.PartCode 2A04400780000000
keylset generic_dut_1 Interface.802_3.VkIndex 0
keylset generic_dut_1 Interface.802_3.IncludeRFLogging off
keylset generic_dut_1 WLANSwitchModel None

#Generic Dut - generic_dut_2
keylset generic_dut_2 used False
keylset generic_dut_2 Vendor generic
keylset generic_dut_2 WLANSwitchSWVersion None
keylset generic_dut_2 APSWVersion None
keylset generic_dut_2 APModel None
keylset generic_dut_2 Interface.802_3.BindStatus False
keylset generic_dut_2 Interface.802_3.WavetestPort 10.88.1.100:1:1
keylset generic_dut_2 Interface.802_3.EthernetSpeed 100
keylset generic_dut_2 Interface.802_3.Duplex full
keylset generic_dut_2 Interface.802_3.Autonegotiation on
keylset generic_dut_2 Interface.802_3.HighPerformance on
keylset generic_dut_2 Interface.802_3.InterfaceType 802.3
keylset generic_dut_2 Interface.802_3.EnableRxAttenuation on
keylset generic_dut_2 Interface.802_3.SecondaryChannelPlacement defer
keylset generic_dut_2 WLANSwitchModel None

#Generic Dut - generic_dut_3
keylset generic_dut_3 used False
keylset generic_dut_3 Vendor generic
keylset generic_dut_3 WLANSwitchSWVersion None
keylset generic_dut_3 APSWVersion None
keylset generic_dut_3 APModel None
keylset generic_dut_3 Interface.802_3.BindStatus False
keylset generic_dut_3 Interface.802_3.WavetestPort 10.88.1.100:1:3
keylset generic_dut_3 Interface.802_3.EthernetSpeed 100
keylset generic_dut_3 Interface.802_3.Duplex full
keylset generic_dut_3 Interface.802_3.Autonegotiation on
keylset generic_dut_3 Interface.802_3.HighPerformance on
keylset generic_dut_3 Interface.802_3.InterfaceType 802.3
keylset generic_dut_3 Interface.802_3.EnableRxAttenuation on
keylset generic_dut_3 Interface.802_3.SecondaryChannelPlacement defer
keylset generic_dut_3 WLANSwitchModel None

#Generic Dut - generic_dut_4
keylset generic_dut_4 used False
keylset generic_dut_4 Vendor generic
keylset generic_dut_4 WLANSwitchSWVersion None
keylset generic_dut_4 APSWVersion None
keylset generic_dut_4 APModel None
keylset generic_dut_4 Interface.802_3.BindStatus False
keylset generic_dut_4 Interface.802_3.WavetestPort 10.88.1.100:1:4
keylset generic_dut_4 Interface.802_3.EthernetSpeed 100
keylset generic_dut_4 Interface.802_3.Duplex full
keylset generic_dut_4 Interface.802_3.Autonegotiation on
keylset generic_dut_4 Interface.802_3.HighPerformance on
keylset generic_dut_4 Interface.802_3.InterfaceType 802.3
keylset generic_dut_4 Interface.802_3.EnableRxAttenuation on
keylset generic_dut_4 Interface.802_3.SecondaryChannelPlacement defer
keylset generic_dut_4 WLANSwitchModel None

#Generic Dut - generic_dut_5
keylset generic_dut_5 used False
keylset generic_dut_5 Vendor generic
keylset generic_dut_5 WLANSwitchSWVersion None
keylset generic_dut_5 APSWVersion None
keylset generic_dut_5 APModel None
keylset generic_dut_5 Interface.802_11n.BindStatus False
keylset generic_dut_5 Interface.802_11n.WavetestPort 10.88.1.100:8:1
keylset generic_dut_5 Interface.802_11n.HighPerformance on
keylset generic_dut_5 Interface.802_11n.InterfaceType 802.11n
keylset generic_dut_5 Interface.802_11n.EnableRxAttenuation on
keylset generic_dut_5 Interface.802_11n.SecondaryChannelPlacement defer
keylset generic_dut_5 Interface.802_11n.Channel Unknown
keylset generic_dut_5 WLANSwitchModel None

#Generic Dut - generic_dut_6
keylset generic_dut_6 used False
keylset generic_dut_6 Vendor generic
keylset generic_dut_6 WLANSwitchSWVersion None
keylset generic_dut_6 APSWVersion None
keylset generic_dut_6 APModel None
keylset generic_dut_6 Interface.802_11n.BindStatus False
keylset generic_dut_6 Interface.802_11n.WavetestPort 10.88.1.100:8:3
keylset generic_dut_6 Interface.802_11n.HighPerformance on
keylset generic_dut_6 Interface.802_11n.InterfaceType 802.11n
keylset generic_dut_6 Interface.802_11n.EnableRxAttenuation on
keylset generic_dut_6 Interface.802_11n.SecondaryChannelPlacement defer
keylset generic_dut_6 Interface.802_11n.Channel Unknown
keylset generic_dut_6 WLANSwitchModel None

#Generic Dut - generic_dut_7
keylset generic_dut_7 used False
keylset generic_dut_7 Vendor generic
keylset generic_dut_7 WLANSwitchSWVersion None
keylset generic_dut_7 APSWVersion None
keylset generic_dut_7 APModel None
keylset generic_dut_7 Interface.802_11n.BindStatus False
keylset generic_dut_7 Interface.802_11n.WavetestPort 10.88.1.100:8:2
keylset generic_dut_7 Interface.802_11n.HighPerformance on
keylset generic_dut_7 Interface.802_11n.InterfaceType 802.11n
keylset generic_dut_7 Interface.802_11n.EnableRxAttenuation on
keylset generic_dut_7 Interface.802_11n.SecondaryChannelPlacement defer
keylset generic_dut_7 Interface.802_11n.Channel Unknown
keylset generic_dut_7 WLANSwitchModel None

#Generic Dut - generic_dut_8
keylset generic_dut_8 used False
keylset generic_dut_8 Vendor generic
keylset generic_dut_8 WLANSwitchSWVersion None
keylset generic_dut_8 APSWVersion None
keylset generic_dut_8 APModel None
keylset generic_dut_8 Interface.802_11n.BindStatus False
keylset generic_dut_8 Interface.802_11n.WavetestPort 10.88.1.100:8:4
keylset generic_dut_8 Interface.802_11n.HighPerformance on
keylset generic_dut_8 Interface.802_11n.InterfaceType 802.11n
keylset generic_dut_8 Interface.802_11n.EnableRxAttenuation on
keylset generic_dut_8 Interface.802_11n.SecondaryChannelPlacement defer
keylset generic_dut_8 Interface.802_11n.Channel Unknown
keylset generic_dut_8 WLANSwitchModel None

#Source a file looking for a license key definition
catch {source [file join $env(HOME) "vw_licenses.tcl"]}



#Auto-generated from: test.wml
#At: 2017-03-15 22:04:06.001000
keylset global_config ChassisName {10.88.1.100}

set logs c:/vwab/wfb/results
set ch 1
set ssid Fios-DYF8B
set psk 12345678

#License Keys for running tests beyond the basic benchmarking tests

#keylset global_config LicenseKey {#####-#####-##### #####-#####-#####}


#TestParameters Global Options

keylset global_config RandomSeed 1142638611
keylset global_config FlowLearningTime 2
keylset global_config NumTrials 1
keylset global_config TrialDuration 30
keylset global_config LossTolerance 0.1
keylset global_config ArpNumRetries  2
keylset global_config ArpRate        100
keylset global_config ArpTimeout     5
keylset global_config DHCPTimeout 5000
keylset global_config PassFailUser True

#Connection Global Options


#LogsAndResultsInfo Global Options

keylset global_config LogsDir $logs


#Learning Global Options


#Wireless Group Count
keylset global_config WirelessGroupCount 1

#Tests - you may define more than one in a TCL list.
keylset global_config TestList {
	tcp_goodput_down_1client
	tcp_goodput_down_25client
}


#Group Eth1 - Client Options


set wired {
    { GroupType                 802.3               }
    { Dut                       Eth2                }
    { Hops                      -1                  }
    { MacAddressMode            Increment           }    
    { GratuitousArp              True               }
    { MacAddress                a0:00:00:00:00:01   }
    { Gateway                   192.168.1.1         }
    { MacAddressIncr            1                   }
    { phyInterface              802.11ag            }
    { MgmtPhyRate               24                  }
    { Qos                       Disable             }
    { BaseIp                    192.168.1.10        }
    { Method                    {None}              }
    { EnableValidateCertificate off					}
    { NumClients                1					}
}
#Group RF - Client Options


set RF1 {
    { GroupType                 802.11ac			}
    { Ssid                      $ssid	          	}
    { Dut                       GWS-AP24			}
    { Method                    WPA2-PSK    		}
    { Channel                   $ch 				}
    { PskAscii                  $psk    			}
	{ DataMcsIndex 				23					}
    { GuardInterval             short				}
    { ChannelBandwidth          40     				}
    { ChannelModel              Bypass				}
	{ TxPower                   14    				}
    { GratuitousArp             True				}
    { Dhcp                      Disable				}
    { BaseIp                    192.168.1.12		}
    { IncrIp                    0.0.0.1				}
    { SubnetMask                255.255.255.0		}
    { Gateway                   192.168.1.1			}
    { KeepAlive                 True                }
    { phyInterface              802.11n             }
    { NumTxAntennas             3                   }
    { EnableLDPC                True                }
    { MgmtPhyRate               24                  }
    { Qos                       Disable             }
    { MacAddress                None                }
    { PlcpConfiguration         mixed               }
    { EnableAMSDUrxaggregation  True                }
    { EnableAMPDUaggregation    True                }
    { EnableAMSDUtxaggregation  True                }
    { EnableValidateCertificate off                 }
    { NumClients                1					}
}

set RF25 {
    { GroupType                 802.11ac			}
    { Ssid                      $ssid	          	}
    { Dut                       GWS-AP24			}
    { Method                    WPA2-PSK    		}
    { Channel                   $ch 				}
    { PskAscii                  $psk    			}
	{ DataMcsIndex 				23					}
    { GuardInterval             short				}
    { ChannelBandwidth          40     				}
    { ChannelModel              Bypass				}
	{ TxPower                   14    				}
    { GratuitousArp             True				}
    { Dhcp                      Disable				}
    { BaseIp                    192.168.1.12		}
    { IncrIp                    0.0.0.1				}
    { SubnetMask                255.255.255.0		}
    { Gateway                   192.168.1.1			}
    { KeepAlive                 True                }
    { phyInterface              802.11n             }
    { NumTxAntennas             3                   }
    { EnableLDPC                True                }
    { MgmtPhyRate               24                  }
    { Qos                       Disable             }
    { MacAddress                None                }
    { PlcpConfiguration         mixed               }
    { EnableAMSDUrxaggregation  True                }
    { EnableAMPDUaggregation    True                }
    { EnableAMSDUtxaggregation  True                }
    { EnableValidateCertificate off                 }
    { NumClients                25					}
}


#unicast_unidirectional_throughput Options
set udp_throughput_down_1client {
    { Test                      unicast_unidirectional_throughput   }
    { Frame                     Custom                              }
    { FrameSizeList             {88 1518}                           }
    { Source                    {wired}             				}
    { Destination               {RF1}               				}
    { Direction                 {Unidirectional}    				}
    { TrafficType               Udp                 				}
    { SearchResolution          0.2%                                }
    { MinSearchValue            1%                                  }
    { MaxSearchValue            150%                                }
    { Mode                      Percent                             }
    { StartValue                10%                                 }
    { AcceptableThroughput      80                                  }
    { FlowType                  UDP                                 }
}

set udp_throughput_down_25client {
    { Test                      unicast_unidirectional_throughput   }
    { Frame                     Custom                              }
    { FrameSizeList             {88 1518}                           }
    { Source                    {wired}             				}
    { Destination               {RF25}               				}
    { Direction                 {Unidirectional}    				}
    { TrafficType               Udp                 				}
    { SearchResolution          0.2%                                }
    { MinSearchValue            1%                                  }
    { MaxSearchValue            150%                                }
    { Mode                      Percent                             }
    { StartValue                10%                                 }
    { AcceptableThroughput      80                                  }
    { FlowType                  UDP                                 }
}



#tcp_goodput Options
set tcp_goodput_down_1client {
    { Test                      tcp_goodput         }
    { FrameSizeList             {1460}              }
    { TcpWindowSize             65536               }
    { AcceptableGoodput         80                  }
    { Source                    {wired}             }
    { Destination               {RF1}               }
    { Direction                 {Unidirectional}    }
    { TrafficType               Tcp                 }
    { PayloadData               None                }
    { DestinationPort           1024                }
    { SourcePort                1024                }
    { FlowType                  TCP                 }
}

set tcp_goodput_down_25client {
    { Test                      tcp_goodput         }
    { FrameSizeList             {1460}              }
    { TcpWindowSize             65536               }
    { AcceptableGoodput         80                  }
    { Source                    {wired}             }
    { Destination               {RF25}               }
    { Direction                 {Unidirectional}    }
    { TrafficType               Tcp                 }
    { PayloadData               None                }
    { DestinationPort           1024                }
    { SourcePort                1024                }
    { FlowType                  TCP                 }
}


set tcp_goodput_up {
    { Test                      tcp_goodput         }
    { FrameSizeList             {1460}              }
    { TcpWindowSize             65536               }
    { AcceptableGoodput         80                  }
    { Source                    {RF1}               }
    { Destination               {wired}             }
    { Direction                 {Unidirectional}    }
    { TrafficType               Tcp                 }
    { PayloadData               None                }
    { DestinationPort           1024                }
    { SourcePort                1024                }
    { FlowType                  TCP                 }
}

set tcp_goodput_bidir {
    { Test                      tcp_goodput         }
    { FrameSizeList             {1460}              }
    { TcpWindowSize             65536               }
    { AcceptableGoodput         80                  }
    { Source                    {wired}             }
    { Destination               {RF1}               }
    { Direction                 {Bidirectional}     }
    { TrafficType               Tcp                 }
    { PayloadData               None                }
    { DestinationPort           1024                }
    { SourcePort                1024                }
    { FlowType                  TCP                 }
}






#Port list for port specific options
keylset global_config Ports {GWS-AP24 Eth2 Eth1}

#Generic Dut Definitions

#Generic Dut - GWS-AP24
keylset GWS-AP24 used True
keylset GWS-AP24 Vendor generic
keylset GWS-AP24 WLANSwitchSWVersion None
keylset GWS-AP24 APSWVersion None
keylset GWS-AP24 APModel None
keylset GWS-AP24 Interface.802_11ac.BindStatus True
keylset GWS-AP24 Interface.802_11ac.WavetestPort 10.88.1.100:3:1
keylset GWS-AP24 Interface.802_11ac.ChannelBandwidth 20
keylset GWS-AP24 Interface.802_11ac.HighPerformance on
keylset GWS-AP24 Interface.802_11ac.InterfaceType 802.11ac
keylset GWS-AP24 Interface.802_11ac.EnableRxAttenuation off
keylset GWS-AP24 Interface.802_11ac.SecondaryChannelPlacement defer
keylset GWS-AP24 Interface.802_11ac.CaptureMode reduced
keylset GWS-AP24 Interface.802_11ac.PartCode 2A04400780000000
keylset GWS-AP24 Interface.802_11ac.IncludeRFLogging off
keylset GWS-AP24 Interface.802_11ac.VkIndex 0
keylset GWS-AP24 Interface.802_11ac.Channel $ch
keylset GWS-AP24 Interface.802_11ac.EnableFollowApBandwidth 1
keylset GWS-AP24 WLANSwitchModel None

#Generic Dut - Eth2
keylset Eth2 used True
keylset Eth2 Vendor generic
keylset Eth2 WLANSwitchSWVersion None
keylset Eth2 APSWVersion None
keylset Eth2 APModel None
keylset Eth2 Interface.802_3.BindStatus True
keylset Eth2 Interface.802_3.WavetestPort 10.88.1.100:1:2
keylset Eth2 Interface.802_3.EthernetSpeed 100
keylset Eth2 Interface.802_3.Duplex full
keylset Eth2 Interface.802_3.Autonegotiation on
keylset Eth2 Interface.802_3.HighPerformance on
keylset Eth2 Interface.802_3.InterfaceType 802.3
keylset Eth2 Interface.802_3.EnableRxAttenuation on
keylset Eth2 Interface.802_3.SecondaryChannelPlacement defer
keylset Eth2 Interface.802_3.CaptureMode normal
keylset Eth2 Interface.802_3.PartCode 2A01100380000000
keylset Eth2 Interface.802_3.VkIndex 0
keylset Eth2 Interface.802_3.IncludeRFLogging off
keylset Eth2 WLANSwitchModel None

#Generic Dut - Eth1
keylset Eth1 used False
keylset Eth1 Vendor generic
keylset Eth1 WLANSwitchSWVersion None
keylset Eth1 APSWVersion None
keylset Eth1 APModel None
keylset Eth1 Interface.802_3.BindStatus False
keylset Eth1 Interface.802_3.WavetestPort 10.88.1.100:1:1
keylset Eth1 Interface.802_3.EthernetSpeed 100
keylset Eth1 Interface.802_3.Duplex full
keylset Eth1 Interface.802_3.Autonegotiation on
keylset Eth1 Interface.802_3.HighPerformance on
keylset Eth1 Interface.802_3.InterfaceType 802.3
keylset Eth1 Interface.802_3.EnableRxAttenuation on
keylset Eth1 Interface.802_3.SecondaryChannelPlacement defer
keylset Eth1 WLANSwitchModel None


#Source a file looking for a license key definition
catch {source [file join $env(HOME) "vw_licenses.tcl"]}



#Auto-generated from: test.wml
#At: 2017-03-15 22:04:06.001000
keylset global_config ChassisName {10.88.1.100}

set logs c:/edn/bhr5/results
set ch 149
set ssid boobooboo
set psk 12345678

#License Keys for running tests beyond the basic benchmarking tests

#keylset global_config LicenseKey {#####-#####-##### #####-#####-#####}


#TestParameters Global Options

keylset global_config RandomSeed 1142638611
keylset global_config FlowLearningTime 2
keylset global_config NumTrials 1
keylset global_config SettleTime 2
# keylset global_config TrialDuration 30
keylset global_config LossTolerance 0.1
keylset global_config ArpNumRetries  2
keylset global_config ArpRate        100
keylset global_config ArpTimeout     5
keylset global_config DHCPTimeout 5000
keylset global_config PassFailUser False

#Connection Global Options

# Execute: tclsh \waveauto610\automation\bin\vw_auto.tcl -f test5.tcl
#LogsAndResultsInfo Global Options

keylset global_config LogsDir $logs


#Learning Global Options


#Wireless Group Count
keylset global_config WirelessGroupCount 1

#Tests - you may define more than one in a TCL list.
keylset global_config TestList {
	wan_tcp_goodput_up_1client
	wan_tcp_goodput_up_25client
	wan_tcp_goodput_bidir_1client
	wan_tcp_goodput_bidir_25client
	
}

# lan_udp_throughput_down_1client
# lan_udp_throughput_down_25client
# lan_udp_throughput_up_1client
# lan_udp_throughput_up_25client
# lan_udp_throughput_bidir_1client
# lan_udp_throughput_bidir_25client
#
# wan_udp_throughput_down_1client
# wan_udp_throughput_down_25client
# wan_udp_throughput_up_1client
# wan_udp_throughput_up_25client
# wan_udp_throughput_bidir_1client
# wan_udp_throughput_bidir_25client
#
# lan_tcp_goodput_down_1client_1session
# lan_tcp_goodput_down_1client_2session
# lan_tcp_goodput_down_1client_5session
# lan_tcp_goodput_down_1client_10session
# lan_tcp_goodput_down_25client_1session
# lan_tcp_goodput_down_25client_2session
# lan_tcp_goodput_down_25client_5session
# lan_tcp_goodput_down_25client_10session
#
# wan_tcp_goodput_down_1client_1session
# wan_tcp_goodput_down_1client_2session
# wan_tcp_goodput_down_1client_5session
# wan_tcp_goodput_down_1client_10session
# wan_tcp_goodput_down_25client_1session
# wan_tcp_goodput_down_25client_2session
# wan_tcp_goodput_down_25client_5session
# wan_tcp_goodput_down_25client_10session
# wan_tcp_goodput_up_1client
# wan_tcp_goodput_up_25client
# wan_tcp_goodput_bidir_1client
# wan_tcp_goodput_bidir_25client

# tcp_goodput_up
# tcp_goodput_bidir
#


#Group Eth1 - Client Options

set port1 {
    { GroupType                 802.3               }
    { Dut                       Eth1                }
    { Hops                      -1                  }
    { MacAddressMode            Increment           }
    { GratuitousArp              True               }
    { MacAddress                a0:00:00:00:00:01   }
    { Gateway                   192.168.1.1         }
	{ SubnetMask                255.255.255.0       }
    { MacAddressIncr            1                   }
    { phyInterface              802.11ag            }
    { MgmtPhyRate               24                  }
    { Qos                       Disable             }
    { BaseIp                    192.168.1.10        }
    { Method                    {None}              }
    { EnableValidateCertificate off					}
    { NumClients                1					}
}

set port1-wan {
    { GroupType                 802.3               }
    { Dut                       Eth1                }
    { Hops                      -1                  }
    { MacAddressMode            Increment           }
    { GratuitousArp              True               }
    { MacAddress                a0:00:00:00:00:01   }
    { Gateway                   10.0.0.1            }
	{ SubnetMask                255.0.0.0           }
    { MacAddressIncr            1                   }
    { phyInterface              802.11ag            }
    { MgmtPhyRate               24                  }
    { Qos                       Disable             }
    { BaseIp                    10.0.0.10           }
    { Method                    {None}              }
    { EnableValidateCertificate off					}
    { NumClients                1					}
}


set port2 {
    { GroupType                 802.3               }
    { Dut                       Eth2                }
    { Hops                      -1                  }
    { MacAddressMode            Increment           }
    { GratuitousArp              True               }
    { MacAddress                a0:00:00:00:00:01   }
    { Gateway                   192.168.1.1         }
	{ SubnetMask                255.255.255.0       }
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
    { Dut                       GWS-AP5				}
    { Method                    WPA2-PSK    		}
    { Channel                   $ch 				}
    { PskAscii                  $psk    			}
	{ VhtDataMcs 				9					}
	{ USDataMcs 				9					}
    { GuardInterval             short				}
    { SigBandwidth          	80     				}
    { ChannelModel              Bypass				}
	{ TxPower                   6    				}
    { GratuitousArp             True				}
    { Dhcp                      Disable				}
    { BaseIp                    192.168.1.12		}
    { IncrIp                    0.0.0.1				}
    { SubnetMask                255.255.255.0		}
    { Gateway                   192.168.1.1			}
    { KeepAlive                 True                }
    { phyInterface              802.11ac            }
    { NumSpatialStreams         4                   }
    { EnableLDPC                True                }
    { MgmtPhyRate               24                  }
    { Qos                       Disable             }
    { MacAddress                None                }
    { PlcpConfiguration         vht_mixed           }
    { EnableAMSDUrxaggregation  True                }
    { EnableAMPDUaggregation    True                }
    { EnableAMSDUtxaggregation  True                }
    { EnableValidateCertificate off                 }
    { DuplicateControlFrames    False				}
    { EnableMuSuMimo 			False				}
    { MimoMode 					mu-mimo				}
	{ USManagementMcs 			11					}
    { NumClients                1					}
	{ BehindNAT 				False				}
}

set RF1-BehindNAT {
    { GroupType                 802.11ac			}
    { Ssid                      $ssid	          	}
    { Dut                       GWS-AP5				}
    { Method                    WPA2-PSK    		}
    { Channel                   $ch 				}
    { PskAscii                  $psk    			}
	{ VhtDataMcs 				9					}
	{ USDataMcs 				9					}
    { GuardInterval             short				}
    { SigBandwidth          	80     				}
    { ChannelModel              Bypass				}
	{ TxPower                   6    				}
    { GratuitousArp             True				}
    { Dhcp                      Disable				}
    { BaseIp                    192.168.1.12		}
    { IncrIp                    0.0.0.1				}
    { SubnetMask                255.255.255.0		}
    { Gateway                   192.168.1.1			}
    { KeepAlive                 True                }
    { phyInterface              802.11ac            }
    { NumSpatialStreams         4                   }
    { EnableLDPC                True                }
    { MgmtPhyRate               24                  }
    { Qos                       Disable             }
    { MacAddress                None                }
    { PlcpConfiguration         vht_mixed           }
    { EnableAMSDUrxaggregation  True                }
    { EnableAMPDUaggregation    True                }
    { EnableAMSDUtxaggregation  True                }
    { EnableValidateCertificate off                 }
    { DuplicateControlFrames    False				}
    { EnableMuSuMimo 			False				}
    { MimoMode 					mu-mimo				}
	{ USManagementMcs 			11					}
    { NumClients                1					}
	{ BehindNAT 				True				}
}

set RF1-NoHiperf {
    { GroupType                 802.11ac			}
    { Ssid                      $ssid	          	}
    { Dut                       GWS-AP5-NoHiperf	}
    { Method                    WPA2-PSK    		}
    { Channel                   $ch 				}
    { PskAscii                  $psk    			}
	{ VhtDataMcs 				9					}
	{ USDataMcs 				9					}
    { GuardInterval             short				}
    { SigBandwidth          	80     				}
    { ChannelModel              Bypass				}
	{ TxPower                   6    				}
    { GratuitousArp             True				}
    { Dhcp                      Disable				}
    { BaseIp                    192.168.1.12		}
    { IncrIp                    0.0.0.1				}
    { SubnetMask                255.255.255.0		}
    { Gateway                   192.168.1.1			}
    { KeepAlive                 True                }
    { phyInterface              802.11ac            }
    { NumSpatialStreams         4                   }
    { EnableLDPC                True                }
    { MgmtPhyRate               24                  }
    { Qos                       Disable             }
    { MacAddress                None                }
    { PlcpConfiguration         vht_mixed           }
    { EnableAMSDUrxaggregation  True                }
    { EnableAMPDUaggregation    True                }
    { EnableAMSDUtxaggregation  True                }
    { EnableValidateCertificate off                 }
    { DuplicateControlFrames    False				}
    { EnableMuSuMimo 			False				}
    { MimoMode 					mu-mimo				}
	{ USManagementMcs 			11					}
    { NumClients                1					}
	{ BehindNAT 				False				}
}

set RF1-NoHiperf-BehindNAT {
    { GroupType                 802.11ac			}
    { Ssid                      $ssid	          	}
    { Dut                       GWS-AP5-NoHiperf	}
    { Method                    WPA2-PSK    		}
    { Channel                   $ch 				}
    { PskAscii                  $psk    			}
	{ VhtDataMcs 				9					}
	{ USDataMcs 				9					}
    { GuardInterval             short				}
    { SigBandwidth          	80     				}
    { ChannelModel              Bypass				}
	{ TxPower                   6    				}
    { GratuitousArp             True				}
    { Dhcp                      Disable				}
    { BaseIp                    192.168.1.12		}
    { IncrIp                    0.0.0.1				}
    { SubnetMask                255.255.255.0		}
    { Gateway                   192.168.1.1			}
    { KeepAlive                 True                }
    { phyInterface              802.11ac            }
    { NumSpatialStreams         4                   }
    { EnableLDPC                True                }
    { MgmtPhyRate               24                  }
    { Qos                       Disable             }
    { MacAddress                None                }
    { PlcpConfiguration         vht_mixed           }
    { EnableAMSDUrxaggregation  True                }
    { EnableAMPDUaggregation    True                }
    { EnableAMSDUtxaggregation  True                }
    { EnableValidateCertificate off                 }
    { DuplicateControlFrames    False				}
    { EnableMuSuMimo 			False				}
    { MimoMode 					mu-mimo				}
	{ USManagementMcs 			11					}
    { NumClients                1					}
	{ BehindNAT 				True				}
}


set RF25 {
    { GroupType                 802.11ac			}
    { Ssid                      $ssid	          	}
    { Dut                       GWS-AP5				}
    { Method                    WPA2-PSK    		}
    { Channel                   $ch 				}
    { PskAscii                  $psk    			}
	{ VhtDataMcs 				9					}
	{ USDataMcs 				9					}
    { GuardInterval             short				}
    { SigBandwidth          	80     				}
    { ChannelModel              Bypass				}
	{ TxPower                   6    				}
    { GratuitousArp             True				}
    { Dhcp                      Disable				}
    { BaseIp                    192.168.1.12		}
    { IncrIp                    0.0.0.1				}
    { SubnetMask                255.255.255.0		}
    { Gateway                   192.168.1.1			}
    { KeepAlive                 True                }
    { phyInterface              802.11ac            }
    { NumSpatialStreams         4                   }
    { EnableLDPC                True                }
    { MgmtPhyRate               24                  }
    { Qos                       Disable             }
    { MacAddress                None                }
    { PlcpConfiguration         vht_mixed           }
    { EnableAMSDUrxaggregation  True                }
    { EnableAMPDUaggregation    True                }
    { EnableAMSDUtxaggregation  True                }
    { EnableValidateCertificate off                 }
    { DuplicateControlFrames    False				}
    { EnableMuSuMimo 			False				}
    { MimoMode 					mu-mimo				}
	{ USManagementMcs 			11					}
    { NumClients                25					}
	{ BehindNAT 				False				}
}

set RF25-BehindNAT {
    { GroupType                 802.11ac			}
    { Ssid                      $ssid	          	}
    { Dut                       GWS-AP5				}
    { Method                    WPA2-PSK    		}
    { Channel                   $ch 				}
    { PskAscii                  $psk    			}
	{ VhtDataMcs 				9					}
	{ USDataMcs 				9					}
    { GuardInterval             short				}
    { SigBandwidth          	80     				}
    { ChannelModel              Bypass				}
	{ TxPower                   6    				}
    { GratuitousArp             True				}
    { Dhcp                      Disable				}
    { BaseIp                    192.168.1.12		}
    { IncrIp                    0.0.0.1				}
    { SubnetMask                255.255.255.0		}
    { Gateway                   192.168.1.1			}
    { KeepAlive                 True                }
    { phyInterface              802.11ac            }
    { NumSpatialStreams         4                   }
    { EnableLDPC                True                }
    { MgmtPhyRate               24                  }
    { Qos                       Disable             }
    { MacAddress                None                }
    { PlcpConfiguration         vht_mixed           }
    { EnableAMSDUrxaggregation  True                }
    { EnableAMPDUaggregation    True                }
    { EnableAMSDUtxaggregation  True                }
    { EnableValidateCertificate off                 }
    { DuplicateControlFrames    False				}
    { EnableMuSuMimo 			False				}
    { MimoMode 					mu-mimo				}
	{ USManagementMcs 			11					}
    { NumClients                25					}
	{ BehindNAT 				True				}
}

set RF25-Nohiperf {
    { GroupType                 802.11ac			}
    { Ssid                      $ssid	          	}
    { Dut                       GWS-AP5-Nohiperf	}
    { Method                    WPA2-PSK    		}
    { Channel                   $ch 				}
    { PskAscii                  $psk    			}
	{ VhtDataMcs 				9					}
	{ USDataMcs 				9					}
    { GuardInterval             short				}
    { SigBandwidth          	80     				}
    { ChannelModel              Bypass				}
	{ TxPower                   6    				}
    { GratuitousArp             True				}
    { Dhcp                      Disable				}
    { BaseIp                    192.168.1.12		}
    { IncrIp                    0.0.0.1				}
    { SubnetMask                255.255.255.0		}
    { Gateway                   192.168.1.1			}
    { KeepAlive                 True                }
    { phyInterface              802.11ac            }
    { NumSpatialStreams         4                   }
    { EnableLDPC                True                }
    { MgmtPhyRate               24                  }
    { Qos                       Disable             }
    { MacAddress                None                }
    { PlcpConfiguration         vht_mixed           }
    { EnableAMSDUrxaggregation  True                }
    { EnableAMPDUaggregation    True                }
    { EnableAMSDUtxaggregation  True                }
    { EnableValidateCertificate off                 }
    { DuplicateControlFrames    False				}
    { EnableMuSuMimo 			False				}
    { MimoMode 					mu-mimo				}
	{ USManagementMcs 			11					}
    { NumClients                25					}
	{ BehindNAT 				False				}
}

set RF25-Nohiperf-BehindNAT {
    { GroupType                 802.11ac			}
    { Ssid                      $ssid	          	}
    { Dut                       GWS-AP5-Nohiperf	}
    { Method                    WPA2-PSK    		}
    { Channel                   $ch 				}
    { PskAscii                  $psk    			}
	{ VhtDataMcs 				9					}
	{ USDataMcs 				9					}
    { GuardInterval             short				}
    { SigBandwidth          	80     				}
    { ChannelModel              Bypass				}
	{ TxPower                   6    				}
    { GratuitousArp             True				}
    { Dhcp                      Disable				}
    { BaseIp                    192.168.1.12		}
    { IncrIp                    0.0.0.1				}
    { SubnetMask                255.255.255.0		}
    { Gateway                   192.168.1.1			}
    { KeepAlive                 True                }
    { phyInterface              802.11ac            }
    { NumSpatialStreams         4                   }
    { EnableLDPC                True                }
    { MgmtPhyRate               24                  }
    { Qos                       Disable             }
    { MacAddress                None                }
    { PlcpConfiguration         vht_mixed           }
    { EnableAMSDUrxaggregation  True                }
    { EnableAMPDUaggregation    True                }
    { EnableAMSDUtxaggregation  True                }
    { EnableValidateCertificate off                 }
    { DuplicateControlFrames    False				}
    { EnableMuSuMimo 			False				}
    { MimoMode 					mu-mimo				}
	{ USManagementMcs 			11					}
    { NumClients                25					}
	{ BehindNAT 				True				}
}

# UDP =============================================================

set lan_udp_throughput_down_1client {
    { Test                      unicast_unidirectional_throughput   }
    { Frame                     Custom                              }
    { FrameSizeList             {64 88 128 256 512 1024 1280 1518}                           }
    { Source                    {port1 port2}             				}
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
    { PayloadData               None                				}
    { DestinationPort           46002                				}
    { SourcePort                45001                				}
}

set lan_udp_throughput_down_25client {
    { Test                      unicast_unidirectional_throughput   }
    { Frame                     Custom                              }
    { FrameSizeList             {64 88 128 256 512 1024 1280 1518}                           }
    { Source                    {port2}             				}
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
    { DestinationPort           46002                				}
    { SourcePort                45001                				}
}

set lan_udp_throughput_up_1client {
    { Test                      unicast_unidirectional_throughput   }
    { Frame                     Custom                              }
    { FrameSizeList             {64 88 128 256 512 1024 1280 1518}                           	}
    { Source                    {RF1}             					}
    { Destination               {port1 port2}               		}
    { Direction                 {Unidirectional}    				}
    { TrafficType               Udp                 				}
    { SearchResolution          0.2%                                }
    { MinSearchValue            1%                                  }
    { MaxSearchValue            150%                                }
    { Mode                      Percent                             }
    { StartValue                10%                                 }
    { AcceptableThroughput      80                                  }
    { FlowType                  UDP                                 }
    { PayloadData               None                				}
    { DestinationPort           46002                				}
    { SourcePort                45001                				}
}

set lan_udp_throughput_up_25client {
    { Test                      unicast_unidirectional_throughput   }
    { Frame                     Custom                              }
    { FrameSizeList             {64 88 128 256 512 1024 1280 1518}                           	}
    { Source                    {RF25}             					}
    { Destination               {port2}               				}
    { Direction                 {Unidirectional}    				}
    { TrafficType               Udp                 				}
    { SearchResolution          0.2%                                }
    { MinSearchValue            1%                                  }
    { MaxSearchValue            150%                                }
    { Mode                      Percent                             }
    { StartValue                10%                                 }
    { AcceptableThroughput      80                                  }
    { FlowType                  UDP                                 }
    { PayloadData               None                				}
    { DestinationPort           46002                				}
    { SourcePort                45001                				}
}

set lan_udp_throughput_bidir_1client {
    { Test                      unicast_unidirectional_throughput   }
    { Frame                     Custom                              }
    { FrameSizeList             {64 88 128 256 512 1024 1280 1518}  }
    { Source                    {RF1-NoHiperf}        				}
    { Destination               {port1 port2}               		}
    { Direction                 {Bidirectional}    					}
    { TrafficType               Udp                 				}
    { SearchResolution          0.2%                                }
    { MinSearchValue            1%                                  }
    { MaxSearchValue            150%                                }
    { Mode                      Percent                             }
    { StartValue                10%                                 }
    { AcceptableThroughput      80                                  }
    { FlowType                  UDP                                 }
    { PayloadData               None                				}
    { DestinationPort           46002                				}
    { SourcePort                45001                				}
}

set lan_udp_throughput_bidir_25client {
    { Test                      unicast_unidirectional_throughput   }
    { Frame                     Custom                              }
    { FrameSizeList             {64 88 128 256 512 1024 1280 1518}  }
    { Source                    {RF25-NoHiperf}            			}
    { Destination               {port2}               				}
    { Direction                 {Bidirectional}    					}
    { TrafficType               Udp                 				}
    { SearchResolution          0.2%                                }
    { MinSearchValue            1%                                  }
    { MaxSearchValue            150%                                }
    { Mode                      Percent                             }
    { StartValue                10%                                 }
    { AcceptableThroughput      80                                  }
    { FlowType                  UDP                                 }
    { PayloadData               None                				}
    { DestinationPort           46002                				}
    { SourcePort                45001                				}
}

set wan_udp_throughput_down_1client {
    { Test                      unicast_unidirectional_throughput   }
    { Frame                     Custom                              }
    { FrameSizeList             {64 88 128 256 512 1024 1280 1518}  }
    { Source                    {port1-wan}            				}
    { Destination               {RF1-BehindNAT}        				}
    { Direction                 {Unidirectional}    				}
    { TrafficType               Udp                 				}
    { SearchResolution          0.2%                                }
    { MinSearchValue            1%                                  }
    { MaxSearchValue            150%                                }
    { Mode                      Percent                             }
    { StartValue                10%                                 }
    { AcceptableThroughput      80                                  }
    { FlowType                  UDP                                 }
    { PayloadData               None                				}
    { DestinationPort           46002                				}
    { SourcePort                45001                				}
}

set wan_udp_throughput_down_25client {
    { Test                      unicast_unidirectional_throughput   }
    { Frame                     Custom                              }
    { FrameSizeList             {64 88 128 256 512 1024 1280 1518}  }
    { Source                    {port1-wan}             			}
    { Destination               {RF25-BehindNAT}               		}
    { Direction                 {Unidirectional}    				}
    { TrafficType               Udp                 				}
    { SearchResolution          0.2%                                }
    { MinSearchValue            1%                                  }
    { MaxSearchValue            150%                                }
    { Mode                      Percent                             }
    { StartValue                10%                                 }
    { AcceptableThroughput      80                                  }
    { FlowType                  UDP                                 }
    { DestinationPort           46002                				}
    { SourcePort                45001                				}
}

set wan_udp_throughput_up_1client {
    { Test                      unicast_unidirectional_throughput   }
    { Frame                     Custom                              }
    { FrameSizeList             {64 88 128 256 512 1024 1280 1518}  }
    { Source                    {RF1-wan}             				}
    { Destination               {port1-BehindNAT}      				}
    { Direction                 {Unidirectional}    				}
    { TrafficType               Udp                 				}
    { SearchResolution          0.2%                                }
    { MinSearchValue            1%                                  }
    { MaxSearchValue            150%                                }
    { Mode                      Percent                             }
    { StartValue                10%                                 }
    { AcceptableThroughput      80                                  }
    { FlowType                  UDP                                 }
    { PayloadData               None                				}
    { DestinationPort           46002                				}
    { SourcePort                45001                				}
}

set wan_udp_throughput_up_25client {
    { Test                      unicast_unidirectional_throughput   }
    { Frame                     Custom                              }
    { FrameSizeList             {64 88 128 256 512 1024 1280 1518}  }
    { Source                    {RF25-BehindNAT}       				}
    { Destination               {port1-wan}            				}
    { Direction                 {Unidirectional}    				}
    { TrafficType               Udp                 				}
    { SearchResolution          0.2%                                }
    { MinSearchValue            1%                                  }
    { MaxSearchValue            150%                                }
    { Mode                      Percent                             }
    { StartValue                10%                                 }
    { AcceptableThroughput      80                                  }
    { FlowType                  UDP                                 }
    { PayloadData               None                				}
    { DestinationPort           46002                				}
    { SourcePort                45001                				}
}

set wan_udp_throughput_bidir_1client {
    { Test                      unicast_unidirectional_throughput   }
    { Frame                     Custom                              }
    { FrameSizeList             {64 88 128 256 512 1024 1280 1518}  }
    { Source                    {RF1-NoHiperf-BehindNAT}  			}
    { Destination               {port1-wan}                			}
    { Direction                 {Bidirectional}    					}
    { TrafficType               Udp                 				}
    { SearchResolution          0.2%                                }
    { MinSearchValue            1%                                  }
    { MaxSearchValue            150%                                }
    { Mode                      Percent                             }
    { StartValue                10%                                 }
    { AcceptableThroughput      80                                  }
    { FlowType                  UDP                                 }
    { PayloadData               None                				}
    { DestinationPort           46002                				}
    { SourcePort                45001                				}
}

set wan_udp_throughput_bidir_25client {
    { Test                      unicast_unidirectional_throughput   }
    { Frame                     Custom                              }
    { FrameSizeList             {64 88 128 256 512 1024 1280 1518}	}
    { Source                    {RF25-NoHiperf-BehindNAT}     		}
    { Destination               {port1-wan}               			}
    { Direction                 {Bidirectional}    					}
    { TrafficType               Udp                 				}
    { SearchResolution          0.2%                                }
    { MinSearchValue            1%                                  }
    { MaxSearchValue            150%                                }
    { Mode                      Percent                             }
    { StartValue                10%                                 }
    { AcceptableThroughput      80                                  }
    { FlowType                  UDP                                 }
    { PayloadData               None                				}
    { DestinationPort           46002                				}
    { SourcePort                45001                				}
}

# ================
#TCP  =====================================
# ================

set lan_tcp_goodput_down_1client_1session {
    { Test                      tcp_goodput         }
    { FrameSizeList             {536 1460}          }
    { TcpWindowSize             2097152             }
    { AcceptableGoodput         80                  }
    { Source                    {port1 port2}       }
    { Destination               {RF1}               }
    { Direction                 {Unidirectional}    }
    { TrafficType               Tcp                 }
    { PayloadData               None                }
    { DestinationPort           1024                }
    { SourcePort                1024                }
    { FlowType                  TCP                 }
	{ TrialDuration				30   				}
	{ NumOfSessionPerClient     1                   }
}

set lan_tcp_goodput_down_1client_2session {
    { Test                      tcp_goodput         }
    { FrameSizeList             {536 1460}          }
    { TcpWindowSize             2097152             }
    { AcceptableGoodput         80                  }
    { Source                    {port1 port2}     	}
    { Destination               {RF1}               }
    { Direction                 {Unidirectional}    }
    { TrafficType               Tcp                 }
    { PayloadData               None                }
    { DestinationPort           1024                }
    { SourcePort                1024                }
    { FlowType                  TCP                 }
	{ TrialDuration				30   				}
	{ NumOfSessionPerClient     2                   }
}

set lan_tcp_goodput_down_1client_5session {
    { Test                      tcp_goodput         }
    { FrameSizeList             {536 1460}          }
    { TcpWindowSize             2097152             }
    { AcceptableGoodput         80                  }
    { Source                    {port1 port2}     	}
    { Destination               {RF1}               }
    { Direction                 {Unidirectional}    }
    { TrafficType               Tcp                 }
    { PayloadData               None                }
    { DestinationPort           1024                }
    { SourcePort                1024                }
    { FlowType                  TCP                 }
	{ TrialDuration				30   				}
	{ NumOfSessionPerClient     5                   }
}

set lan_tcp_goodput_down_1client_10session {
    { Test                      tcp_goodput         }
    { FrameSizeList             {536 1460}          }
    { TcpWindowSize             2097152             }
    { AcceptableGoodput         80                  }
    { Source                    {port1 port2}     	}
    { Destination               {RF1}               }
    { Direction                 {Unidirectional}    }
    { TrafficType               Tcp                 }
    { PayloadData               None                }
    { DestinationPort           1024                }
    { SourcePort                1024                }
    { FlowType                  TCP                 }
	{ TrialDuration				30   				}
	{ NumOfSessionPerClient     10                  }
}

set lan_tcp_goodput_down_25client_1session {
    { Test                      tcp_goodput         }
    { FrameSizeList             {536 1460}          }
    { TcpWindowSize             2097152           }
    { AcceptableGoodput         80                  }
    { Source                    {port2}        		}
    { Destination               {RF25}              }
    { Direction                 {Unidirectional}    }
    { TrafficType               Tcp                 }
    { PayloadData               None                }
    { DestinationPort           1024                }
    { SourcePort                1024                }
    { FlowType                  TCP                 }
	{ NumOfSessionPerClient     1                   }
}

set lan_tcp_goodput_down_25client_2session {
    { Test                      tcp_goodput         }
    { FrameSizeList             {536 1460}          }
    { TcpWindowSize             2097152             }
    { AcceptableGoodput         80                  }
    { Source                    {port2}        		}
    { Destination               {RF25}              }
    { Direction                 {Unidirectional}    }
    { TrafficType               Tcp                 }
    { PayloadData               None                }
    { DestinationPort           1024                }
    { SourcePort                1024                }
    { FlowType                  TCP                 }
	{ NumOfSessionPerClient     2                   }
}

set lan_tcp_goodput_down_25client_5session {
    { Test                      tcp_goodput         }
    { FrameSizeList             {536 1460}          }
    { TcpWindowSize             2097152             }
    { AcceptableGoodput         80                  }
    { Source                    {port2}        		}
    { Destination               {RF25}              }
    { Direction                 {Unidirectional}    }
    { TrafficType               Tcp                 }
    { PayloadData               None                }
    { DestinationPort           1024                }
    { SourcePort                1024                }
    { FlowType                  TCP                 }
	{ NumOfSessionPerClient     5                   }
}

set lan_tcp_goodput_down_25client_10session {
    { Test                      tcp_goodput         }
    { FrameSizeList             {536 1460}          }
    { TcpWindowSize             2097152             }
    { AcceptableGoodput         80                  }
    { Source                    {port2}        		}
    { Destination               {RF25}              }
    { Direction                 {Unidirectional}    }
    { TrafficType               Tcp                 }
    { PayloadData               None                }
    { DestinationPort           1024                }
    { SourcePort                1024                }
    { FlowType                  TCP                 }
	{ NumOfSessionPerClient     10                  }
}

# TCP WAN

set wan_tcp_goodput_down_1client_1session {
    { Test                      tcp_goodput         }
    { FrameSizeList             {536 1460}          }
    { TcpWindowSize             2097152             }
    { AcceptableGoodput         80                  }
    { Source                    {port1-wan}   	    }
    { Destination               {RF1-BehindNAT}     }
    { Direction                 {Unidirectional}    }
    { TrafficType               Tcp                 }
    { PayloadData               None                }
    { DestinationPort           1024                }
    { SourcePort                1024                }
    { FlowType                  TCP                 }
	{ TrialDuration				30   				}
	{ NumOfSessionPerClient     1                   }
}

set wan_tcp_goodput_down_1client_2session {
    { Test                      tcp_goodput         }
    { FrameSizeList             {536 1460}          }
    { TcpWindowSize             2097152             }
    { AcceptableGoodput         80                  }
    { Source                    {port1-wan}   	    }
    { Destination               {RF1-BehindNAT}     }
    { Direction                 {Unidirectional}    }
    { TrafficType               Tcp                 }
    { PayloadData               None                }
    { DestinationPort           1024                }
    { SourcePort                1024                }
    { FlowType                  TCP                 }
	{ TrialDuration				30   				}
	{ NumOfSessionPerClient     2                   }
}

set wan_tcp_goodput_down_1client_5session {
    { Test                      tcp_goodput         }
    { FrameSizeList             {536 1460}          }
    { TcpWindowSize             2097152             }
    { AcceptableGoodput         80                  }
    { Source                    {port1-wan}   	    }
    { Destination               {RF1-BehindNAT}     }
    { Direction                 {Unidirectional}    }
    { TrafficType               Tcp                 }
    { PayloadData               None                }
    { DestinationPort           1024                }
    { SourcePort                1024                }
    { FlowType                  TCP                 }
	{ TrialDuration				30   				}
	{ NumOfSessionPerClient     5                   }
}

set wan_tcp_goodput_down_1client_10session {
    { Test                      tcp_goodput         }
    { FrameSizeList             {536 1460}          }
    { TcpWindowSize             2097152             }
    { AcceptableGoodput         80                  }
    { Source                    {port1-wan}   	    }
    { Destination               {RF1-BehindNAT}     }
    { Direction                 {Unidirectional}    }
    { TrafficType               Tcp                 }
    { PayloadData               None                }
    { DestinationPort           1024                }
    { SourcePort                1024                }
    { FlowType                  TCP                 }
	{ TrialDuration				30   				}
	{ NumOfSessionPerClient     10                  }
}

set wan_tcp_goodput_down_25client_1session {
    { Test                      tcp_goodput         }
    { FrameSizeList             {536 1460}          }
    { TcpWindowSize             2097152             }
    { AcceptableGoodput         80                  }
    { Source                    {port1-wan}   	    }
    { Destination               {RF25-BehindNAT}     }
    { Direction                 {Unidirectional}    }
    { TrafficType               Tcp                 }
    { PayloadData               None                }
    { DestinationPort           1024                }
    { SourcePort                1024                }
    { FlowType                  TCP                 }
	{ TrialDuration				30   				}
	{ NumOfSessionPerClient     1                   }
}

set wan_tcp_goodput_down_25client_2session {
    { Test                      tcp_goodput         }
    { FrameSizeList             {536 1460}          }
    { TcpWindowSize             2097152             }
    { AcceptableGoodput         80                  }
    { Source                    {port1-wan}   	    }
    { Destination               {RF25-BehindNAT}     }
    { Direction                 {Unidirectional}    }
    { TrafficType               Tcp                 }
    { PayloadData               None                }
    { DestinationPort           1024                }
    { SourcePort                1024                }
    { FlowType                  TCP                 }
	{ TrialDuration				30   				}
	{ NumOfSessionPerClient     2                   }
}

set wan_tcp_goodput_down_25client_5session {
    { Test                      tcp_goodput         }
    { FrameSizeList             {536 1460}          }
    { TcpWindowSize             2097152             }
    { AcceptableGoodput         80                  }
    { Source                    {port1-wan}   	    }
    { Destination               {RF25-BehindNAT}     }
    { Direction                 {Unidirectional}    }
    { TrafficType               Tcp                 }
    { PayloadData               None                }
    { DestinationPort           1024                }
    { SourcePort                1024                }
    { FlowType                  TCP                 }
	{ TrialDuration				30   				}
	{ NumOfSessionPerClient     5                   }
}

set wan_tcp_goodput_down_25client_10session {
    { Test                      tcp_goodput         }
    { FrameSizeList             {536 1460}          }
    { TcpWindowSize             2097152             }
    { AcceptableGoodput         80                  }
    { Source                    {port1-wan}   	    }
    { Destination               {RF25-BehindNAT}     }
    { Direction                 {Unidirectional}    }
    { TrafficType               Tcp                 }
    { PayloadData               None                }
    { DestinationPort           1024                }
    { SourcePort                1024                }
    { FlowType                  TCP                 }
	{ TrialDuration				30   				}
	{ NumOfSessionPerClient     10                  }
}

set wan_tcp_goodput_up_1client {
    { Test                      tcp_goodput         }
    { FrameSizeList             {536 1460}          }
    { TcpWindowSize             2097152             }
    { AcceptableGoodput         80                  }
    { Source                    {RF1-BehindNAT}     }
    { Destination               {port1-wan} 		}
    { TrafficType               Tcp                 }
    { PayloadData               None                }
    { DestinationPort           1024                }
    { SourcePort                1024                }
    { FlowType                  TCP                 }
	{ TrialDuration				30   				}
	{ NumOfSessionPerClient     {1 2 5 10}          }
}


set wan_tcp_goodput_up_25client {
    { Test                      tcp_goodput         }
    { FrameSizeList             {536 1460}          }
    { TcpWindowSize             2097152             }
    { AcceptableGoodput         80                  }
    { Source                    {RF25-BehindNAT}     }
    { Destination               {port1-wan}         }
    { Direction                 {Unidirectional}    }
    { TrafficType               Tcp                 }
    { PayloadData               None                }
    { DestinationPort           1024                }
    { SourcePort                1024                }
    { FlowType                  TCP                 }
	{ TrialDuration				30   				}
	{ NumOfSessionPerClient     {1 2 5 10}          }
}




set wan_tcp_goodput_bidir_1client {
    { Test                      tcp_goodput         }
    { FrameSizeList             {536 1460}          }
    { TcpWindowSize             2097152             }
    { AcceptableGoodput         80                  }
    { Source                    {port1-wan}   	    }
    { Destination               {RF1-NoHiperf-BehindNAT}     }
    { Direction                 {Biidirectional}    }
    { TrafficType               Tcp                 }
    { PayloadData               None                }
    { DestinationPort           1024                }
    { SourcePort                1024                }
    { FlowType                  TCP                 }
	{ TrialDuration				30   				}
	{ NumOfSessionPerClient     {1 2 5 10}                   }
}


set wan_tcp_goodput_bidir_25client {
    { Test                      tcp_goodput         }
    { FrameSizeList             {536 1460}          }
    { TcpWindowSize             2097152             }
    { AcceptableGoodput         80                  }
    { Source                    {port1-wan}   	    }
    { Destination               {RF25-NoHiperf-BehindNAT}     }
    { Direction                 {Bidirectional}    }
    { TrafficType               Tcp                 }
    { PayloadData               None                }
    { DestinationPort           1024                }
    { SourcePort                1024                }
    { FlowType                  TCP                 }
	{ TrialDuration				30   				}
	{ NumOfSessionPerClient     {1 2 5 10}                   }
}










set lan_tcp_goodput_down_25client {
    { Test                      tcp_goodput         }
    { FrameSizeList             {536 1460}          }
    { TcpWindowSize             2097152             }
    { AcceptableGoodput         80                  }
    { Source                    {port2}     	    }
    { Destination               {RF25}              }
    { Direction                 {Unidirectional}    }
    { TrafficType               Tcp                 }
    { PayloadData               None                }
    { DestinationPort           1024                }
    { SourcePort                1024                }
    { FlowType                  TCP                 }
}

set tcp_goodput_up {
    { Test                      tcp_goodput         }
    { FrameSizeList             {536 1460}          }
    { TcpWindowSize             2097152             }
    { AcceptableGoodput         80                  }
    { Source                    {RF1}               }
    { Destination               {port1 port2}	    }
    { Direction                 {Unidirectional}    }
    { TrafficType               Tcp                 }
    { PayloadData               None                }
    { DestinationPort           1024                }
    { SourcePort                1024                }
    { FlowType                  TCP                 }
}

set tcp_goodput_bidir {
    { Test                      tcp_goodput         }
    { FrameSizeList             {536 1460}          }
    { TcpWindowSize             2097152             }
    { AcceptableGoodput         80                  }
    { Source                    {port1 port2}  	    }
    { Destination               {RF1-NoHiperf}      }
    { Direction                 {Bidirectional}     }
    { TrafficType               Tcp                 }
    { PayloadData               None                }
    { DestinationPort           1024                }
    { SourcePort                1024                }
    { FlowType                  TCP                 }
}


#Port list for port specific options
keylset global_config Ports {GWS-AP5 Eth2 Eth1}

#Generic Dut Definitions

#Generic Dut - GWS-AP5
keylset GWS-AP5 used True
keylset GWS-AP5 Vendor generic
keylset GWS-AP5 WLANSwitchSWVersion None
keylset GWS-AP5 APSWVersion None
keylset GWS-AP5 APModel None
keylset GWS-AP5 Interface.802_11ac.BindStatus True
keylset GWS-AP5 Interface.802_11ac.WavetestPort 10.88.1.100:3:1
keylset GWS-AP5 Interface.802_11ac.ChannelBandwidth 20
keylset GWS-AP5 Interface.802_11ac.HighPerformance on
keylset GWS-AP5 Interface.802_11ac.InterfaceType 802.11ac
keylset GWS-AP5 Interface.802_11ac.EnableRxAttenuation off
keylset GWS-AP5 Interface.802_11ac.SecondaryChannelPlacement defer
keylset GWS-AP5 Interface.802_11ac.CaptureMode reduced
keylset GWS-AP5 Interface.802_11ac.PartCode 2A04400780000000
keylset GWS-AP5 Interface.802_11ac.IncludeRFLogging off
keylset GWS-AP5 Interface.802_11ac.VkIndex 0
keylset GWS-AP5 Interface.802_11ac.Channel $ch
keylset GWS-AP5 Interface.802_11ac.EnableFollowApBandwidth 1
keylset GWS-AP5 WLANSwitchModel None

#Generic Dut - GWS-AP5-NoHiperf
keylset GWS-AP5-NoHiperf used True
keylset GWS-AP5-NoHiperf Vendor generic
keylset GWS-AP5-NoHiperf WLANSwitchSWVersion None
keylset GWS-AP5-NoHiperf APSWVersion None
keylset GWS-AP5-NoHiperf APModel None
keylset GWS-AP5-NoHiperf Interface.802_11ac.BindStatus True
keylset GWS-AP5-NoHiperf Interface.802_11ac.WavetestPort 10.88.1.100:3:1
keylset GWS-AP5-NoHiperf Interface.802_11ac.ChannelBandwidth 20
keylset GWS-AP5-NoHiperf Interface.802_11ac.HighPerformance off
keylset GWS-AP5-NoHiperf Interface.802_11ac.InterfaceType 802.11ac
keylset GWS-AP5-NoHiperf Interface.802_11ac.EnableRxAttenuation off
keylset GWS-AP5-NoHiperf Interface.802_11ac.SecondaryChannelPlacement defer
keylset GWS-AP5-NoHiperf Interface.802_11ac.CaptureMode reduced
keylset GWS-AP5-NoHiperf Interface.802_11ac.PartCode 2A04400780000000
keylset GWS-AP5-NoHiperf Interface.802_11ac.IncludeRFLogging off
keylset GWS-AP5-NoHiperf Interface.802_11ac.VkIndex 0
keylset GWS-AP5-NoHiperf Interface.802_11ac.Channel $ch
keylset GWS-AP5-NoHiperf Interface.802_11ac.EnableFollowApBandwidth 1
keylset GWS-AP5-NoHiperf WLANSwitchModel None


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

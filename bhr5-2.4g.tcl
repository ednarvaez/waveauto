
#Auto-generated from: test.wml
#At: 2017-03-15 22:04:06.001000
keylset global_config ChassisName {10.88.1.100}

set logs c:/edn/waveauto/results
set ch 1
set ssid RedPanda
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

keylset global_config dbusername veriwave
keylset global_config dbpassword veriwave
keylset global_config dbname veriwave
keylset global_config LogsDir $logs


#Learning Global Options


#Wireless Group Count
keylset global_config WirelessGroupCount 1

#Tests - you may define more than one in a TCL list.

keylset global_config TestList {
  24g-lan-udp-dn-1c
	24g-lan-udp-dn-25c
	24g-lan-udp-up-1c
	24g-lan-udp-up-25c
	24g-lan-udp-bidir-1c
	24g-lan-udp-bidir-25c
	24g-wan-udp-dn-1c
	24g-wan-udp-dn-25c
	24g-wan-udp-up-1c
	24g-wan-udp-up-25c
	24g-wan-udp-bidir-1c
	24g-wan-udp-bidir-25c
	24g-lan-tcp-dn-1c
  24g-lan-tcp-dn-25c
	24g-lan-tcp-up-1c
  24g-lan-tcp-up-25c
	24g-lan-tcp-bidir-1c
	24g-lan-tcp-bidir-25c
	24g-wan-tcp-dn-1c
  24g-wan-tcp-dn-25c
	24g-wan-tcp-up-1c
  24g-wan-tcp-up-25c
	24g-wan-tcp-bidir-1c
	24g-wan-tcp-bidir-25c
}

# 24g-lan-udp-dn-1c
# 24g-lan-udp-dn-25c
# 24g-lan-udp-up-1c
# 24g-lan-udp-up-25c
# 24g-lan-udp-bidir-1c
# 24g-lan-udp-bidir-25c
#
# 24g-wan-udp-dn-1c
# 24g-wan-udp-dn-25c
# 24g-wan-udp-up-1c
# 24g-wan-udp-up-25c
# 24g-wan-udp-bidir-1c
# 24g-wan-udp-bidir-25c
#
# 24g-lan-tcp-dn-1c
# 24g-lan-tcp-dn-25c
# 24g-lan-tcp-up-1c
# 24g-lan-tcp-up-25c
# 24g-lan-tcp-bidir-1c
# 24g-lan-tcp-bidir-25c
#
# 24g-wan-tcp-dn-1c
# 24g-wan-tcp-dn-25c
# 24g-wan-tcp-up-1c
# 24g-wan-tcp-up-25c
# 24g-wan-tcp-bidir-1c
# 24g-wan-tcp-bidir-25c

#Group Eth1 - Client Options

set port1 {
    { GroupType                 802.3               }
    { Dut                       Eth1                }
    { Hops                      -1                  }
    { MacAddressMode            Increment           }
    { GratuitousArp             True                }
    { MacAddress                a0:00:00:00:00:01   }
    { Gateway                   192.168.1.1         }
    { MacAddressIncr            1                   }
    { phyInterface              802.11ag            }
    { MgmtPhyRate               24                  }
    { Qos                       Disable             }
    { BaseIp                    192.168.1.10        }
    { Method                    {None}              }
    { EnableValidateCertificate off					        }
    { NumClients                1					          }
}

set port1-wan {
    { GroupType                 802.3               }
    { Dut                       Eth1                }
    { Hops                      -1                  }
    { MacAddressMode            Increment           }
    { GratuitousArp             True                }
    { MacAddress                a0:00:00:00:00:01   }
    { Gateway                   10.0.0.1            }
	  { SubnetMask                255.0.0.0           }
    { MacAddressIncr            1                   }
    { phyInterface              802.11ag            }
    { MgmtPhyRate               24                  }
    { Qos                       Disable             }
    { BaseIp                    10.0.0.10           }
    { Method                    {None}              }
    { EnableValidateCertificate off					        }
    { NumClients                1			          		}
}

set port2 {
    { GroupType                 802.3               }
    { Dut                       Eth2                }
    { Hops                      -1                  }
    { MacAddressMode            Increment           }
    { GratuitousArp             True                }
    { MacAddress                a0:00:00:00:00:01   }
    { Gateway                   192.168.1.1         }
    { MacAddressIncr            1                   }
    { phyInterface              802.11ag            }
    { MgmtPhyRate               24                  }
    { Qos                       Disable             }
    { BaseIp                    192.168.1.10        }
    { Method                    {None}              }
    { EnableValidateCertificate off			        		}
    { NumClients                1				          	}
}

#Group RF - Client Options

set RF1 {
    { GroupType                 802.11ac		        }
    { Ssid                      $ssid	          	  }
    { Dut                       GWS-AP24	    	    }
    { Method                    WPA2-PSK    		    }
    { Channel                   $ch 				        }
    { PskAscii                  $psk    			      }
    { GuardInterval             short				        }
    { ChannelModel              Bypass		 	      	}
  	{ TxPower                   6    				        }
    { GratuitousArp             True				        }
    { Dhcp                      Disable			      	}
    { BaseIp                    192.168.1.12		    }
    { IncrIp                    0.0.0.1			      	}
    { SubnetMask                255.255.255.0		    }
    { Gateway                   192.168.1.1		     	}
    { KeepAlive                 True                }
    { phyInterface              802.11n             }
    { NumSpatialStreams         4                   }
    { EnableLDPC                False               }
    { MgmtPhyRate               24                  }
    { Qos                       Disable             }
    { MacAddress                None                }
    { PlcpConfiguration         mixed               }
    { EnableAMSDUrxaggregation  True                }
    { EnableAMPDUaggregation    True                }
    { EnableAMSDUtxaggregation  False               }
    { EnableValidateCertificate off                 }
    { DuplicateControlFrames    False				        }
    { EnableMuSuMimo 			      False	              }
    { MimoMode 					        mu-mimo           	}
	  { USManagementMcs 			    11			         		}
    { NumClients                1				           	}
	  { DataMcsIndex              23                  }
	  { ChannelBandwidth          40                  }
	  { NumTxAntennas             4                   }
	  { BehindNAT 				        False		        		}
}

set RF1-BehindNAT {
    { GroupType                 802.11ac		      	}
    { Ssid                      $ssid	             	}
    { Dut                       GWS-AP24	         	}
    { Method                    WPA2-PSK        		}
    { Channel                   $ch 			         	}
    { PskAscii                  $psk    			      }
    { GuardInterval             short				        }
    { ChannelModel              Bypass		       		}
	  { TxPower                   6    				        }
    { GratuitousArp             True			         	}
    { Dhcp                      Disable				      }
    { BaseIp                    192.168.1.12	     	}
    { IncrIp                    0.0.0.1			        }
    { SubnetMask                255.255.255.0		    }
    { Gateway                   192.168.1.1			    }
    { KeepAlive                 True                }
    { phyInterface              802.11n             }
    { NumSpatialStreams         4                   }
    { EnableLDPC                False               }
    { MgmtPhyRate               24                  }
    { Qos                       Disable             }
    { MacAddress                None                }
    { PlcpConfiguration         mixed               }
    { EnableAMSDUrxaggregation  True                }
    { EnableAMPDUaggregation    True                }
    { EnableAMSDUtxaggregation  False               }
    { EnableValidateCertificate off                 }
    { DuplicateControlFrames    False				        }
    { EnableMuSuMimo 			      False		         		}
    { MimoMode 					        mu-mimo		       		}
	  { USManagementMcs 			    11				        	}
    { NumClients                1				           	}
	  { DataMcsIndex              23                  }
	  { ChannelBandwidth          40                  }
	  { NumTxAntennas             4                   }
	  { BehindNAT 				        True		         		}
}

set RF1-NoHiperf {
    { GroupType                 802.11ac		      	}
    { Ssid                      $ssid	            	}
    { Dut                       GWS-AP24-NoHiperf 	}
    { Method                    WPA2-PSK    		    }
    { Channel                   $ch 				        }
    { PskAscii                  $psk    			      }
    { GuardInterval             short				        }
    { ChannelModel              Bypass		      		}
	  { TxPower                   6    				        }
    { GratuitousArp             True			         	}
    { Dhcp                      Disable				      }
    { BaseIp                    192.168.1.12	    	}
    { IncrIp                    0.0.0.1				      }
    { SubnetMask                255.255.255.0		    }
    { Gateway                   192.168.1.1			    }
    { KeepAlive                 True                }
    { phyInterface              802.11n             }
    { NumSpatialStreams         4                   }
    { EnableLDPC                False               }
    { MgmtPhyRate               24                  }
    { Qos                       Disable             }
    { MacAddress                None                }
    { PlcpConfiguration         mixed               }
    { EnableAMSDUrxaggregation  True                }
    { EnableAMPDUaggregation    True                }
    { EnableAMSDUtxaggregation  False               }
    { EnableValidateCertificate off                 }
    { DuplicateControlFrames    False				        }
    { EnableMuSuMimo 			      False	        			}
    { MimoMode 					        mu-mimo			      	}
	  { USManagementMcs 			    11			         		}
    { NumClients                1			          		}
	  { DataMcsIndex              23                  }
	  { ChannelBandwidth          40                  }
	  { NumTxAntennas             4                   }
	  { BehindNAT 			        	False			         	}
}

set RF1-NoHiperf-BehindNAT {
    { GroupType                 802.11ac			      }
    { Ssid                      $ssid	             	}
    { Dut                       GWS-AP24-NoHiperf	 	}
    { Method                    WPA2-PSK    	     	}
    { Channel                   $ch 				        }
    { PskAscii                  $psk    			      }
    { GuardInterval             short				        }
    { ChannelModel              Bypass		      		}
	  { TxPower                   6    				        }
    { GratuitousArp             True				        }
    { Dhcp                      Disable				      }
    { BaseIp                    192.168.1.12		    }
    { IncrIp                    0.0.0.1				      }
    { SubnetMask                255.255.255.0	    	}
    { Gateway                   192.168.1.1		     	}
    { KeepAlive                 True                }
    { phyInterface              802.11n             }
    { NumSpatialStreams         4                   }
    { EnableLDPC                False               }
    { MgmtPhyRate               24                  }
    { Qos                       Disable             }
    { MacAddress                None                }
    { PlcpConfiguration         mixed               }
    { EnableAMSDUrxaggregation  True                }
    { EnableAMPDUaggregation    True                }
    { EnableAMSDUtxaggregation  False               }
    { EnableValidateCertificate off                 }
    { DuplicateControlFrames    False				        }
    { EnableMuSuMimo 			      False	        			}
    { MimoMode 					        mu-mimo	      			}
	  { USManagementMcs 			    11		        			}
    { NumClients                1		           			}
	  { DataMcsIndex              23                  }
	  { ChannelBandwidth          40                  }
	  { NumTxAntennas             4                   }
	  { BehindNAT 				        True		         		}
}


set RF25 {
    { GroupType                 802.11ac			      }
    { Ssid                      $ssid	            	}
    { Dut                       GWS-AP24		      	}
    { Method                    WPA2-PSK         		}
    { Channel                   $ch 				        }
    { PskAscii                  $psk    		      	}
    { GuardInterval             short			        	}
    { ChannelModel              Bypass		      		}
	  { TxPower                   6    	         			}
    { GratuitousArp             True		        		}
    { Dhcp                      Disable			       	}
    { BaseIp                    192.168.1.12		    }
    { IncrIp                    0.0.0.1				      }
    { SubnetMask                255.255.255.0   		}
    { Gateway                   192.168.1.1		     	}
    { KeepAlive                 True                }
    { phyInterface              802.11n             }
    { NumSpatialStreams         4                   }
    { EnableLDPC                False               }
    { MgmtPhyRate               24                  }
    { Qos                       Disable             }
    { MacAddress                None                }
    { PlcpConfiguration         vht_mixed           }
    { EnableAMSDUrxaggregation  True                }
    { EnableAMPDUaggregation    True                }
    { EnableAMSDUtxaggregation  False               }
    { EnableValidateCertificate off                 }
    { DuplicateControlFrames    False				        }
    { EnableMuSuMimo 		       	False	         			}
    { MimoMode 					        mu-mimo     				}
	  { USManagementMcs 			    11		        			}
    { NumClients                25				        	}
	  { DataMcsIndex              23                  }
	  { ChannelBandwidth          40                  }
	  { NumTxAntennas             4                   }
	  { BehindNAT 				        False			         	}
}

set RF25-BehindNAT {
    { GroupType                 802.11ac		  	    }
    { Ssid                      $ssid	          	  }
    { Dut                       GWS-AP24			      }
    { Method                    WPA2-PSK    		    }
    { Channel                   $ch 				        }
    { PskAscii                  $psk    		      	}
    { GuardInterval             short			        	}
    { ChannelModel              Bypass		      		}
	  { TxPower                   6    				        }
    { GratuitousArp             True			         	}
    { Dhcp                      Disable				      }
    { BaseIp                    192.168.1.12	     	}
    { IncrIp                    0.0.0.1				      }
    { SubnetMask                255.255.255.0	    	}
    { Gateway                   192.168.1.1		     	}
    { KeepAlive                 True                }
    { phyInterface              802.11n             }
    { NumSpatialStreams         4                   }
    { EnableLDPC                False               }
    { MgmtPhyRate               24                  }
    { Qos                       Disable             }
    { MacAddress                None                }
    { PlcpConfiguration         vht_mixed           }
    { EnableAMSDUrxaggregation  True                }
    { EnableAMPDUaggregation    True                }
    { EnableAMSDUtxaggregation  False               }
    { EnableValidateCertificate off                 }
    { DuplicateControlFrames    False				        }
    { EnableMuSuMimo 			      False			        	}
    { MimoMode 					        mu-mimo		       		}
	  { USManagementMcs 			    11				        	}
    { NumClients                25		        			}
	  { DataMcsIndex              23                  }
	  { ChannelBandwidth          40                  }
	  { NumTxAntennas             4                   }
	  { BehindNAT 			        	True		         		}
}

set RF25-NoHiperf {
    { GroupType                 802.11ac			      }
    { Ssid                      $ssid	             	}
    { Dut                       GWS-AP24-NoHiperf		}
    { Method                    WPA2-PSK    		    }
    { Channel                   $ch 				        }
    { PskAscii                  $psk    	       		}
    { GuardInterval             short			        	}
    { ChannelModel              Bypass	       			}
	  { TxPower                   6    			         	}
    { GratuitousArp             True		        		}
    { Dhcp                      Disable		       		}
    { BaseIp                    192.168.1.12      	}
    { IncrIp                    0.0.0.1			        }
    { SubnetMask                255.255.255.0		    }
    { Gateway                   192.168.1.1		     	}
    { KeepAlive                 True                }
    { phyInterface              802.11n             }
    { NumSpatialStreams         4                   }
    { EnableLDPC                False               }
    { MgmtPhyRate               24                  }
    { Qos                       Disable             }
    { MacAddress                None                }
    { PlcpConfiguration         vht_mixed           }
    { EnableAMSDUrxaggregation  True                }
    { EnableAMPDUaggregation    True                }
    { EnableAMSDUtxaggregation  False               }
    { EnableValidateCertificate off                 }
    { DuplicateControlFrames    False				        }
    { EnableMuSuMimo 			      False		         		}
    { MimoMode 					        mu-mimo		       		}
	  { USManagementMcs 		     	11		         			}
    { NumClients                25	         				}
	  { DataMcsIndex              23                  }
	  { ChannelBandwidth          40                  }
	  { NumTxAntennas             4                   }
	  { BehindNAT 				        False			         	}
}

set RF25-NoHiperf-BehindNAT {
    { GroupType                 802.11ac			      }
    { Ssid                      $ssid	            	}
    { Dut                       GWS-AP24-NoHiperf		}
    { Method                    WPA2-PSK    		    }
    { Channel                   $ch 				        }
    { PskAscii                  $psk    			      }
    { GuardInterval             short				        }
    { ChannelModel              Bypass		      		}
	  { TxPower                   6    	         			}
    { GratuitousArp             True		        		}
    { Dhcp                      Disable			      	}
    { BaseIp                    192.168.1.12	     	}
    { IncrIp                    0.0.0.1				      }
    { SubnetMask                255.255.255.0		    }
    { Gateway                   192.168.1.1			    }
    { KeepAlive                 True                }
    { phyInterface              802.11n             }
    { NumSpatialStreams         4                   }
    { EnableLDPC                False               }
    { MgmtPhyRate               24                  }
    { Qos                       Disable             }
    { MacAddress                None                }
    { PlcpConfiguration         vht_mixed           }
    { EnableAMSDUrxaggregation  True                }
    { EnableAMPDUaggregation    True                }
    { EnableAMSDUtxaggregation  False               }
    { EnableValidateCertificate off                 }
    { DuplicateControlFrames    False			          }
    { EnableMuSuMimo 			      False		            }
    { MimoMode 					        mu-mimo			      	}
	  { USManagementMcs 			    11			         		}
    { NumClients                25		        			}
    { DataMcsIndex              23                  }
	  { ChannelBandwidth          40                  }
	  { NumTxAntennas             4                   }
	  { BehindNAT 				       True		          		}
}

#unicast_unidirectional_throughput Options
# {64 88 128 256 512 1024 1280 1518}

set 24g-lan-udp-dn-1c {
    { Test                      unicast_unidirectional_throughput   }
    { Frame                     Custom                      }
    { FrameSizeList             {1518}                      }
    { Source                    {port2}             				}
    { Destination               {RF1}               				}
    { Direction                 {Unidirectional}    				}
    { TrafficType               Udp                 				}
    { SearchResolution          0.2%                        }
    { MinSearchValue            1%                          }
    { MaxSearchValue            150%                        }
    { Mode                      Percent                     }
    { StartValue                10%                         }
    { AcceptableThroughput      0                           }
    { FlowType                  UDP                         }
    { PayloadData               None                				}
    { DestinationPort           46002                				}
    { SourcePort                45001                				}
	  { TrialDuration		      		5   				                }
}

set 24g-lan-udp-dn-25c {
    { Test                      unicast_unidirectional_throughput   }
    { Frame                     Custom                      }
    { FrameSizeList             {1518}                      }
    { Source                    {port2}              				}
    { Destination               {RF25}               				}
    { Direction                 {Unidirectional}    				}
    { TrafficType               Udp                 				}
    { SearchResolution          0.2%                        }
    { MinSearchValue            1%                          }
    { MaxSearchValue            150%                        }
    { Mode                      Percent                     }
    { StartValue                10%                         }
    { AcceptableThroughput      0                           }
    { FlowType                  UDP                         }
    { DestinationPort           46002                				}
    { SourcePort                45001                				}
	  { TrialDuration		      		5   				                }
}

set 24g-lan-udp-up-1c {
    { Test                      unicast_unidirectional_throughput   }
    { Frame                     Custom                      }
    { FrameSizeList             {1518}                    	}
    { Source                    {RF1}             					}
    { Destination               {port2}                 		}
    { Direction                 {Unidirectional}    				}
    { TrafficType               Udp                 				}
    { SearchResolution          0.2%                        }
    { MinSearchValue            1%                          }
    { MaxSearchValue            150%                        }
    { Mode                      Percent                     }
    { StartValue                10%                         }
    { AcceptableThroughput      0                           }
    { FlowType                  UDP                         }
    { PayloadData               None                				}
    { DestinationPort           46002                				}
    { SourcePort                45001                				}
	  { TrialDuration		       		5   				                }
}

set 24g-lan-udp-up-25c {
    { Test                      unicast_unidirectional_throughput   }
    { Frame                     Custom                              }
    { FrameSizeList             {1518}                     	}
    { Source                    {RF25}             					}
    { Destination               {port2}               			}
    { Direction                 {Unidirectional}    				}
    { TrafficType               Udp                 				}
    { SearchResolution          0.2%                        }
    { MinSearchValue            1%                          }
    { MaxSearchValue            150%                        }
    { Mode                      Percent                     }
    { StartValue                10%                         }
    { AcceptableThroughput      0                           }
    { FlowType                  UDP                         }
    { PayloadData               None                				}
    { DestinationPort           46002                				}
    { SourcePort                45001                				}
	  { TrialDuration	       			5   				                }
}

set 24g-lan-udp-bidir-1c {
    { Test                      unicast_unidirectional_throughput   }
    { Frame                     Custom                      }
    { FrameSizeList             {1518}                    	}
    { Source                    {RF1-NoHiperf}     					}
    { Destination               {port2}               		  }
    { Direction                 {Bidirectional}    				  }
    { TrafficType               Udp                 			 	}
    { SearchResolution          0.2%                        }
    { MinSearchValue            1%                          }
    { MaxSearchValue            150%                        }
    { Mode                      Percent                     }
    { StartValue                10%                         }
    { AcceptableThroughput      0                           }
    { FlowType                  UDP                         }
    { PayloadData               None                				}
    { DestinationPort           46002                				}
    { SourcePort                45001                				}
	  { TrialDuration			       	5   				                }
}

set 24g-lan-udp-bidir-25c {
    { Test                      unicast_unidirectional_throughput   }
    { Frame                     Custom                      }
    { FrameSizeList             {1518}                    	}
    { Source                    {RF25-NoHiperf}    					}
    { Destination               {port2}               	   	}
    { Direction                 {Bidirectional}    				  }
    { TrafficType               Udp                 				}
    { SearchResolution          0.2%                        }
    { MinSearchValue            1%                          }
    { MaxSearchValue            150%                        }
    { Mode                      Percent                     }
    { StartValue                10%                         }
    { AcceptableThroughput      0                           }
    { FlowType                  UDP                         }
    { PayloadData               None                				}
    { DestinationPort           46002                				}
    { SourcePort                45001                				}
	  { TrialDuration				      5   				                }
}

#  UDP WAN

set 24g-wan-udp-dn-1c {
    { Test                      unicast_unidirectional_throughput   }
    { Frame                     Custom                      }
    { FrameSizeList             {1518}                      }
    { Source                    {port1-wan}         				}
    { Destination               {RF1-BehindNAT}      				}
    { Direction                 {Unidirectional}    				}
    { TrafficType               Udp                 				}
    { SearchResolution          0.2%                        }
    { MinSearchValue            1%                          }
    { MaxSearchValue            150%                        }
    { Mode                      Percent                     }
    { StartValue                10%                         }
    { AcceptableThroughput      0                           }
    { FlowType                  UDP                         }
    { PayloadData               None                				}
    { DestinationPort           46002                				}
    { SourcePort                45001                				}
   	{ TrialDuration	      			5   				                }
}

set 24g-wan-udp-dn-25c {
    { Test                      unicast_unidirectional_throughput   }
    { Frame                     Custom                      }
    { FrameSizeList             {1518}                      }
    { Source                    {port1-wan}          				}
    { Destination               {RF25-BehindNAT}    				}
    { Direction                 {Unidirectional}    				}
    { TrafficType               Udp                 				}
    { SearchResolution          0.2%                        }
    { MinSearchValue            1%                          }
    { MaxSearchValue            150%                        }
    { Mode                      Percent                     }
    { StartValue                10%                         }
    { AcceptableThroughput      0                           }
    { FlowType                  UDP                         }
    { DestinationPort           46002                				}
    { SourcePort                45001                				}
	  { TrialDuration		      		5   				                }
}

set 24g-wan-udp-up-1c {
    { Test                      unicast_unidirectional_throughput   }
    { Frame                     Custom                      }
    { FrameSizeList             {1518}                     	}
    { Source                    {RF1-BehindNAT}    					}
    { Destination               {port1-wan}              		}
    { Direction                 {Unidirectional}    				}
    { TrafficType               Udp                 				}
    { SearchResolution          0.2%                        }
    { MinSearchValue            1%                          }
    { MaxSearchValue            150%                        }
    { Mode                      Percent                     }
    { StartValue                10%                         }
    { AcceptableThroughput      0                           }
    { FlowType                  UDP                         }
    { PayloadData               None                				}
    { DestinationPort           46002                				}
    { SourcePort                45001                				}
	  { TrialDuration			       	5   				                }
}

set 24g-wan-udp-up-25c {
    { Test                      unicast_unidirectional_throughput   }
    { Frame                     Custom                      }
    { FrameSizeList             {1518}                     	}
    { Source                    {RF25-BehindNAT}   					}
    { Destination               {port1-wan}         				}
    { Direction                 {Unidirectional}    				}
    { TrafficType               Udp                 				}
    { SearchResolution          0.2%                        }
    { MinSearchValue            1%                          }
    { MaxSearchValue            150%                        }
    { Mode                      Percent                     }
    { StartValue                10%                         }
    { AcceptableThroughput      0                           }
    { FlowType                  UDP                         }
    { PayloadData               None                				}
    { DestinationPort           46002                				}
    { SourcePort                45001                				}
	  { TrialDuration			       	5   				                }
}

set 24g-wan-udp-bidir-1c {
    { Test                      unicast_unidirectional_throughput   }
    { Frame                     Custom                      }
    { FrameSizeList             {1518}                    	}
    { Source                    {RF1-NoHiperf-BehindNAT}    }
    { Destination               {port1-wan}             		}
    { Direction                 {Bidirectional}    		 	   	}
    { TrafficType               Udp                 		  	}
    { SearchResolution          0.2%                        }
    { MinSearchValue            1%                          }
    { MaxSearchValue            150%                        }
    { Mode                      Percent                     }
    { StartValue                10%                         }
    { AcceptableThroughput      0                           }
    { FlowType                  UDP                         }
    { PayloadData               None                				}
    { DestinationPort           46002                				}
    { SourcePort                45001                				}
	  { TrialDuration				      5   				                }
}

set 24g-wan-udp-bidir-25c {
    { Test                      unicast_unidirectional_throughput   }
    { Frame                     Custom                      }
    { FrameSizeList             {1518}                     	}
    { Source                    {RF25-NoHiperf-BehindNAT}  	}
    { Destination               {port1-wan}          				}
    { Direction                 {Bidirectional}      				}
    { TrafficType               Udp                 				}
    { SearchResolution          0.2%                        }
    { MinSearchValue            1%                          }
    { MaxSearchValue            150%                        }
    { Mode                      Percent                     }
    { StartValue                10%                         }
    { AcceptableThroughput      0                           }
    { FlowType                  UDP                         }
    { PayloadData               None                				}
    { DestinationPort           46002                				}
    { SourcePort                45001                				}
	  { TrialDuration	       			5   				                }
}


#tcp_goodput Options  =======================================================
# {536 1460}

set 24g-lan-tcp-dn-1c {
    { Test                      tcp_goodput                 }
    { FrameSizeList             {1460}                      }
    { TcpWindowSize             2097152                     }
    { AcceptableGoodput         0                           }
    { Source                    {port2}     		            }
    { Destination               {RF1}                       }
    { Direction                 {Unidirectional}            }
    { TrafficType               Tcp                         }
    { PayloadData               None                        }
    { DestinationPort           1024                        }
    { SourcePort                1024                        }
    { FlowType                  TCP                         }
	  { TrialDuration	       			5                   				}
	  { NumOfSessionPerClient     {1 2 5 10}                  }
}

set 24g-lan-tcp-dn-25c {
    { Test                      tcp_goodput         }
    { FrameSizeList             {1460}              }
    { TcpWindowSize             2097152             }
    { AcceptableGoodput         0                   }
    { Source                    {port2}     	      }
    { Destination               {RF25}              }
    { Direction                 {Unidirectional}    }
    { TrafficType               Tcp                 }
    { PayloadData               None                }
    { DestinationPort           1024                }
    { SourcePort                1024                }
    { FlowType                  TCP                 }
    { TrialDuration	       			5              			}
    { NumOfSessionPerClient     {1 2 5 10}          }
}

set 24g-lan-tcp-up-1c {
    { Test                      tcp_goodput                }
    { FrameSizeList             {1460}                     }
    { TcpWindowSize             2097152                    }
     { AcceptableGoodput         0                         }
    { Source                    {RF1}     	               }
    { Destination               {port2}                    }
    { Direction                 {Unidirectional}    }
    { TrafficType               Tcp                 }
    { PayloadData               None                }
    { DestinationPort           1024                }
    { SourcePort                1024                }
    { FlowType                  TCP                 }
	  { TrialDuration				      5   	         			}
	  { NumOfSessionPerClient     {1 2 5 10}          }
	  { AcceptableGoodput         0                   }
}

set 24g-lan-tcp-up-25c {
    { Test                      tcp_goodput         }
    { FrameSizeList             {1460}              }
    { TcpWindowSize             2097152             }
    { AcceptableGoodput         0                   }
    { Source                    {RF25}            	}
    { Destination               {port2}             }
    { Direction                 {Unidirectional}    }
    { TrafficType               Tcp                 }
    { PayloadData               None                }
    { DestinationPort           1024                }
    { SourcePort                1024                }
    { FlowType                  TCP                 }
    { TrialDuration	       			5              			}
	  { NumOfSessionPerClient     {1 2 5 10}          }
}

set 24g-lan-tcp-bidir-1c {
    { Test                      tcp_goodput         }
    { FrameSizeList             {1460}              }
    { TcpWindowSize             2097152             }
    { AcceptableGoodput         0                   }
    { Source                    {port2}         		}
    { Destination               {RF1-NoHiperf}      }
    { Direction                 {Bidirectional}     }
    { TrafficType               Tcp                 }
    { PayloadData               None                }
    { DestinationPort           1024                }
    { SourcePort                1024                }
    { FlowType                  TCP                 }
	  { TrialDuration				      5   	         			}
	  { NumOfSessionPerClient     {1 2 5 10}          }
	  { AcceptableGoodput         0                   }
}


set 24g-lan-tcp-bidir-25c {
    { Test                      tcp_goodput         }
    { FrameSizeList             {1460}              }
    { TcpWindowSize             2097152             }
    { AcceptableGoodput         0                   }
    { Source                    {RF25-NoHiperf}    	}
    { Destination               {port2}             }
    { Direction                 {Bidirectional}     }
    { TrafficType               Tcp                 }
    { PayloadData               None                }
    { DestinationPort           1024                }
    { SourcePort                1024                }
    { FlowType                  TCP                 }
    { TrialDuration	       			5              			}
	  { NumOfSessionPerClient     {1 2 5 10}          }
}


# TCP WAN

set 24g-wan-tcp-dn-1c {
    { Test                      tcp_goodput         }
    { FrameSizeList             {1460}              }
    { TcpWindowSize             2097152             }
    { AcceptableGoodput         0                   }
    { Source                    {port1-wan}     		}
    { Destination               {RF1-BehindNAT}     }
    { Direction                 {Unidirectional}    }
    { TrafficType               Tcp                 }
    { PayloadData               None                }
    { DestinationPort           1024                }
    { SourcePort                1024                }
    { FlowType                  TCP                 }
	  { TrialDuration				      5            				}
	  { NumOfSessionPerClient     {1 2 5 10}          }
}

set 24g-wan-tcp-dn-25c {
    { Test                      tcp_goodput         }
    { FrameSizeList             {1460}              }
    { TcpWindowSize             2097152             }
    { AcceptableGoodput         0                   }
    { Source                    {port1-wan}        	}
    { Destination               {RF25-BehindNAT}    }
    { Direction                 {Unidirectional}    }
    { TrafficType               Tcp                 }
    { PayloadData               None                }
    { DestinationPort           1024                }
    { SourcePort                1024                }
    { FlowType                  TCP                 }
	  { NumOfSessionPerClient     {1 2 5 10}          }
}

set 24g-wan-tcp-up-1c {
    { Test                      tcp_goodput         }
    { FrameSizeList             {1460}              }
    { TcpWindowSize             2097152             }
    { AcceptableGoodput         0                   }
    { Source                    {RF1-BehindNAT}     }
    { Destination               {port1-wan}         }
    { Direction                 {Unidirectional}    }
    { TrafficType               Tcp                 }
    { PayloadData               None                }
    { DestinationPort           1024                }
    { SourcePort                1024                }
    { FlowType                  TCP                 }
	  { TrialDuration				      5           				}
	  { NumOfSessionPerClient     {1 2 5 10}          }
}

set 24g-wan-tcp-up-25c {
    { Test                      tcp_goodput         }
    { FrameSizeList             {1460}              }
    { TcpWindowSize             2097152             }
    { AcceptableGoodput         0                   }
    { Source                    {RF25-BehindNAT}   	}
    { Destination               {port1-wan}         }
    { Direction                 {Unidirectional}    }
    { TrafficType               Tcp                 }
    { PayloadData               None                }
    { DestinationPort           1024                }
    { SourcePort                1024                }
    { FlowType                  TCP                 }
	  { NumOfSessionPerClient     {1 2 5 10}          }
}

set 24g-wan-tcp-bidir-1c {
    { Test                      tcp_goodput                 }
    { FrameSizeList             {1460}                      }
    { TcpWindowSize             2097152                     }
    { AcceptableGoodput         0                           }
    { Source                    {RF1-NoHiperf-BehindNAT}    }
    { Destination               {port1-wan}                 }
    { Direction                 {Bidirectional}             }
    { TrafficType               Tcp                         }
    { PayloadData               None                        }
    { DestinationPort           1024                        }
    { SourcePort                1024                        }
    { FlowType                  TCP                         }
	  { TrialDuration			       	5           				        }
	  { NumOfSessionPerClient     {1 2 5 10}                  }
}


set 24g-wan-tcp-bidir-25c {
    { Test                      tcp_goodput                 }
    { FrameSizeList             {1460}                      }
    { TcpWindowSize             2097152                     }
    { AcceptableGoodput         0                           }
    { Source                    {RF25-NoHiperf-BehindNAT}  	}
    { Destination               {port1-wan}                 }
    { Direction                 {Bidirectional}             }
    { TrafficType               Tcp                         }
    { PayloadData               None                        }
    { DestinationPort           1024                        }
    { SourcePort                1024                        }
    { FlowType                  TCP                         }
	   { NumOfSessionPerClient     {1 2 5 10}                 }
}






#Port list for port specific options
keylset global_config Ports {GWS-AP24 GWS-AP24-NoHiperf Eth2 Eth1}

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
keylset GWS-AP24 Interface.802_11ac.Channel 1
keylset GWS-AP24 Interface.802_11ac.EnableFollowApBandwidth 1
keylset GWS-AP24 WLANSwitchModel None


#Generic Dut - GWS-AP24-NoHiperf
keylset GWS-AP24-NoHiperf used True
keylset GWS-AP24-NoHiperf Vendor generic
keylset GWS-AP24-NoHiperf WLANSwitchSWVersion None
keylset GWS-AP24-NoHiperf APSWVersion None
keylset GWS-AP24-NoHiperf APModel None
keylset GWS-AP24-NoHiperf Interface.802_11ac.BindStatus True
keylset GWS-AP24-NoHiperf Interface.802_11ac.WavetestPort 10.88.1.100:3:1
keylset GWS-AP24-NoHiperf Interface.802_11ac.ChannelBandwidth 20
keylset GWS-AP24-NoHiperf Interface.802_11ac.HighPerformance off
keylset GWS-AP24-NoHiperf Interface.802_11ac.InterfaceType 802.11ac
keylset GWS-AP24-NoHiperf Interface.802_11ac.EnableRxAttenuation off
keylset GWS-AP24-NoHiperf Interface.802_11ac.SecondaryChannelPlacement defer
keylset GWS-AP24-NoHiperf Interface.802_11ac.CaptureMode reduced
keylset GWS-AP24-NoHiperf Interface.802_11ac.PartCode 2A04400780000000
keylset GWS-AP24-NoHiperf Interface.802_11ac.IncludeRFLogging off
keylset GWS-AP24-NoHiperf Interface.802_11ac.VkIndex 0
keylset GWS-AP24-NoHiperf Interface.802_11ac.Channel 1
keylset GWS-AP24-NoHiperf Interface.802_11ac.EnableFollowApBandwidth 1
keylset GWS-AP24-NoHiperf WLANSwitchModel None


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
keylset Eth2 Interface.802_3.PartCode 2A04400780000000
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

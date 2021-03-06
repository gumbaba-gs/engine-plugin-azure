[#ftl]

[@addModule
    name="baseline"
    description="Testing module for the azure baseline component"
    provider=AZURETEST_PROVIDER
    properties=[]
/]

[#macro azuretest_module_baseline ]

    [@loadModule
        settingSets=[]
        blueprint={
            "Tiers" : {
                "mgmt" : {
                    "Components" : {
                        "baseline" : {
                            "baseline" : {
                                "Instances" : {
                                    "default" : {
                                        "DeploymentUnits" : [ "segment-az-baseline-base" ]
                                    }
                                },
                                "Profiles" : {
                                    "Testing" : [ "Component" ]
                                }
                            }
                        }
                    }
                }
            },
            "TestCases" : {
                "basebaselinetemplate" : {
                    "OutputSuffix" : "template.json",
                    "Structural" : {
                        "JSON" : {
                            "Match" : {
                                "BaselineStorageID" : {
                                    "Path" : "outputs.storageXmgmtXbaseline.value",
                                    "Value" : "/subscriptions/12345678-abcd-efgh-ijkl-123456789012/resourceGroups/mockRG/providers/Microsoft.Mock/mockR/mock-resource-name"
                                }
                            }
                        }
                    }
                }
            },
            "TestProfiles" : {
                "Component" : {
                    "baseline" : {
                        "TestCases" : [ "basebaselinetemplate" ]
                    }
                }
            }
        }
        stackOutputs=[]
        commandLineOption={}
    /]

[/#macro]

[#ftl]

[@addResourceGroupInformation
    type=CONTAINERHOST_COMPONENT_TYPE
    provider=AZURE_PROVIDER
    attributes=[
        {
            "Names" : "Profiles",
            "Children" : [
                {
                    "Names" : "Sku",
                    "Type" : STRING_TYPE,
                    "Default" : "default"
                },
                {
                    "Names" : "VMImage",
                    "Type" : STRING_TYPE,
                    "Default" : "default"
                },
                {
                    "Names" : "Scaling",
                    "Subobjects" : true,
                    "Children" : azureScalingProfilesChildren
                }
            ] 
        }
    ]
    resourceGroup=DEFAULT_RESOURCE_GROUP
    services=
        [
            AZURE_WEB_SERVICE,
            AZURE_INSIGHTS_SERVICE
        ]
/]
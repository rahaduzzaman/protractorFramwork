Feature: End to End flow for Advisory line of service

@E2E_Advisory
Scenario Outline: End to End service flow for Advisory

            #### SDP Home #####
Given User is on SDP Page
            #### Creating service Builder #####
Then Click on option "Service Builder" from admin tab
Then User clicks on "createNewService" in "serviceCreate" page
            #### Service Details page #####
Then User enters service name as "<ServiceName>"
Then User enters "<ServiceDesc>" in "ServiceDesc" field in "serviceCreate" page
Then User selects "<Territory>" from "territory" dropdown in "serviceCreate" page
Then User selects "<LOS>" from "LOS" dropdown in "serviceCreate" page
Then User selects the business unit "<BusinessUnits>"
#Add activity#1
Then User clicks on "AddActivityLink" in "serviceCreate" page
Then User enters "<Activity_Name1>" in "ActivityName" field in "serviceCreate" page
Then User enters "<Activity_Description1>" in "ActivityDescription" field in "serviceCreate" page
Then User clicks on "ActivityAddButton" in "serviceCreate" page
Then Verify that avaibility of activity "<Activity_Name1>"
Then Verify the description of activity "<Activity_Name1>" is "<Activity_Description1>"
#Add activity#2
Then User clicks on "AddActivityLink" in "serviceCreate" page
Then User enters "<Activity_Name2>" in "ActivityName" field in "serviceCreate" page
Then User enters "<Activity_Description2>" in "ActivityDescription" field in "serviceCreate" page
Then User clicks on "ActivityAddButton" in "serviceCreate" page
Then Verify that avaibility of activity "<Activity_Name2>"
Then Verify the description of activity "<Activity_Name2>" is "<Activity_Description2>"
Then User clicks on "CreateTags" in "serviceCreate" page
Then User enters service tag as "<TagName>"
Then User clicks on "CreateTags" in "serviceCreate" page
Then User selects "<ResourceGroup>" from Resource Group multi select list
Then User clicks on next button in "ServiceDetails" tab
                #### Dynamic fields page #####
Then User enters "Test" in "formTitle" field in "addiotionalDetails" page
Then User enters "Test_Desc" in "description" field in "serviceCreate" page
Then User clicks on "FormComponentDownArrow" in "additionaldetails" page
Then User clicks on "FormControlOption" in "additionaldetails" page
Then User selects "<OptionName>" as dynamic field option
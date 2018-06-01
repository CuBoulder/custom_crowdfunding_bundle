@crowd_funding
Feature: Crowd Funding

When Crowdfunding is enabled on a Web Express site
As user
I should be able to view the list of projects that are being crowdfunded by CU Boulder

# NOT SURE EXACTLY HOW TO TEST; BELOW ARE SOME OF THE THINGS THAT HAPPEN WHEN THE BUNDLE IS ENABLED

Scenario: The Crowdfunding module has been added to the module list
    Given I am logged in as a user with the "developer" role
    When I go to "admin/module"
    Then I should see "Crowdfunding"
 
Scenario: The Crowdfunding Settings have been added to Configuration list
    Given I am logged in as a user with the "developer" role
    When I go to "admin/config"
    Then I should see "Community Funded Configuration"
    
Scenario: The block 'Community Funded' shows up in list of available blocks on Context
  Given I am logged in as a user with the "developer" role
  And I go to "admin/structure/context/add"
  And I fill in "Name" with "crowdfunding"
  And I select "Query parameters" from "edit-conditions-selector"
  And I fill in "edit-conditions-plugins-query-param-values-parameters-0-name" with "cfpage"
  And I select "Blocks" from "edit-reactions-selector"
  Then I should see "COMMUNITY_FUNDED"
  

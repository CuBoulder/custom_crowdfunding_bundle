@crowd_funding
Feature: Crowd Funding

When I login to a Web Express website
As an authenticated user with the right permission
I should be able to god only knows what this does

Scenario: An authenticated user should be able to access the form for adding a class note
    Given  I am logged in as a user with the "developer" role
    When I go to "admin/module"
    Then I should see "Crowdfunding"


Scenario: An anonymous user should not be able to access the form for adding a class note
    When I am on "admin/module"
    Then I should see "Access denied"

Feature: Create new categories
  As a blog administrator
  In order to categorize my articles
  I want to be able to add new categories and edit existing ones

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Successfully create new category
    Given I am on the new category page
    When I fill in "category_name" with "Foobar"
    And I fill in "category_keywords" with "Lorem Ipsum"
    And I fill in "category_permalink" with "permanentLink"
    And I fill in "category_description" with "description"
    And I press "Save"
    Then I should see "Foobar"
    And I should see "Lorem Ipsum"
    And I should see "permanentLink"
    And I should see "description"
    When I follow "Foobar"
    And I fill in "category_name" with "Foobar New"
    And I fill in "category_keywords" with "Lorem Ipsum New"
    And I fill in "category_permalink" with "permanentLinkNew"
    And I fill in "category_description" with "description new"
    And I press "Save"
    Then I should see "Foobar New"
    And I should see "Lorem Ipsum New"
    And I should see "permanentLinkNew"
    And I should see "description new"
    
    
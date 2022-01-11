require "application_system_test_case"

class JoinTableCategoryActivitiesTest < ApplicationSystemTestCase
  setup do
    @join_table_category_activity = join_table_category_activities(:one)
  end

  test "visiting the index" do
    visit join_table_category_activities_url
    assert_selector "h1", text: "Join Table Category Activities"
  end

  test "creating a Join table category activity" do
    visit join_table_category_activities_url
    click_on "New Join Table Category Activity"

    click_on "Create Join table category activity"

    assert_text "Join table category activity was successfully created"
    click_on "Back"
  end

  test "updating a Join table category activity" do
    visit join_table_category_activities_url
    click_on "Edit", match: :first

    click_on "Update Join table category activity"

    assert_text "Join table category activity was successfully updated"
    click_on "Back"
  end

  test "destroying a Join table category activity" do
    visit join_table_category_activities_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Join table category activity was successfully destroyed"
  end
end

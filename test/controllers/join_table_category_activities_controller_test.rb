require "test_helper"

class JoinTableCategoryActivitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @join_table_category_activity = join_table_category_activities(:one)
  end

  test "should get index" do
    get join_table_category_activities_url
    assert_response :success
  end

  test "should get new" do
    get new_join_table_category_activity_url
    assert_response :success
  end

  test "should create join_table_category_activity" do
    assert_difference('JoinTableCategoryActivity.count') do
      post join_table_category_activities_url, params: { join_table_category_activity: {  } }
    end

    assert_redirected_to join_table_category_activity_url(JoinTableCategoryActivity.last)
  end

  test "should show join_table_category_activity" do
    get join_table_category_activity_url(@join_table_category_activity)
    assert_response :success
  end

  test "should get edit" do
    get edit_join_table_category_activity_url(@join_table_category_activity)
    assert_response :success
  end

  test "should update join_table_category_activity" do
    patch join_table_category_activity_url(@join_table_category_activity), params: { join_table_category_activity: {  } }
    assert_redirected_to join_table_category_activity_url(@join_table_category_activity)
  end

  test "should destroy join_table_category_activity" do
    assert_difference('JoinTableCategoryActivity.count', -1) do
      delete join_table_category_activity_url(@join_table_category_activity)
    end

    assert_redirected_to join_table_category_activities_url
  end
end

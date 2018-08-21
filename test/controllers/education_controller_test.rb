require 'test_helper'

class EducationControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get education_index_url
    assert_response :success
  end

  test "should get create" do
    get education_create_url
    assert_response :success
  end

  test "should get destroy" do
    get education_destroy_url
    assert_response :success
  end

end

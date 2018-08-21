require 'test_helper'

class QnaControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get qna_index_url
    assert_response :success
  end

end

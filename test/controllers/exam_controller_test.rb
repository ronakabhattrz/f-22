require 'test_helper'

class ExamControllerTest < ActionDispatch::IntegrationTest
  test "should get ans_to_que" do
    get exam_ans_to_que_url
    assert_response :success
  end

end

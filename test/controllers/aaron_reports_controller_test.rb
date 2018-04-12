require 'test_helper'

class AaronReportsControllerTest < ActionDispatch::IntegrationTest
  test "should get report1" do
    get aaron_reports_report1_url
    assert_response :success
  end

  test "should get report2" do
    get aaron_reports_report2_url
    assert_response :success
  end

  test "should get report3" do
    get aaron_reports_report3_url
    assert_response :success
  end

end

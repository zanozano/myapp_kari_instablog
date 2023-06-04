require "test_helper"

class InstablogsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @instablog = instablogs(:one)
  end

  test "should get index" do
    get instablogs_url
    assert_response :success
  end

  test "should get new" do
    get new_instablog_url
    assert_response :success
  end

  test "should create instablog" do
    assert_difference("Instablog.count") do
      post instablogs_url, params: { instablog: { body: @instablog.body, image: @instablog.image } }
    end

    assert_redirected_to instablog_url(Instablog.last)
  end

  test "should show instablog" do
    get instablog_url(@instablog)
    assert_response :success
  end

  test "should get edit" do
    get edit_instablog_url(@instablog)
    assert_response :success
  end

  test "should update instablog" do
    patch instablog_url(@instablog), params: { instablog: { body: @instablog.body, image: @instablog.image } }
    assert_redirected_to instablog_url(@instablog)
  end

  test "should destroy instablog" do
    assert_difference("Instablog.count", -1) do
      delete instablog_url(@instablog)
    end

    assert_redirected_to instablogs_url
  end
end

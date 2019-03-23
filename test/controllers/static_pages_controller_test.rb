require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  def setup
    @base_title = "MKW 最遅攻略ページ"
  end

#  test "should get root" do
#    get root_url
#    assert_response :success
#  end

  test "should get root" do
    get root_url
    assert_response :success
    # 特定のHTMLタグが存在するかのテスト
    assert_select "title", "#{@base_title}"
  end

  test "should get item_info" do
    get item_info_path
    assert_response :success
    assert_select "title", "アイテム攻略 | #{@base_title}"
  end
end

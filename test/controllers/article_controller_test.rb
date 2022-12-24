require 'test_helper'

class ArticleControllerTest < ActionDispatch::IntegrationTest
  test "having no name parameter returns Bad Parameters" do
    get "/article"
    assert_response(400)
    assert_equal "{\"message\":\"Bad parameters\"}", @response.body
  end

  test "having name parameter returns 200" do
    get "/article?name=Bob"
    assert_response(200)
  end

  test "having empty name parameter returns 200 and null" do
    get "/article?name="
    assert_response(200)
    assert_equal "null", @response.body
  end

  test "getSelectedArticles returns the correct list of articles" do
  end

  test "randomWeight selects properly based on weight" do
  end
end

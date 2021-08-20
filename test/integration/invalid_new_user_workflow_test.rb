require "test_helper"

class InvalidNewUserWorkflowTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  fixtures :all

  test 'create user without login' do
    @user = users(:one)
    get '/users/sign_up'
    assert_response :success

    post users_url, params:{user: {last_name: @user.last_name}}
    assert_equal '/users', path
    assert_select 'li', "Email can't be blank"
    assert_select 'li', "Password can't be blank"
  end
end

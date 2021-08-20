require "test_helper"

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "should not save user without data" do
    user = User.new
    assert_not user.save 
  end

  test "should report error" do
    # undefined_variable is not defined elsewhere in the test case
    assert_raises(NameError) do
      undefined_variable
    end
  end
  

end

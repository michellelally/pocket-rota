require "test_helper"

class ShiftTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "should not save shift without data" do
    shift = Shift.new
    assert_not shift.save 
  end

end

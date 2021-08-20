require "test_helper"

class EmployeeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "should not save employee without data" do
    employee = Employee.new
    assert_not employee.save 
  end
end

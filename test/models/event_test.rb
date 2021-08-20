require "test_helper"

class EventTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "should not save event without data" do
    event = Event.new
    assert_not event.save 
  end
end

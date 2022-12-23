require "test_helper"

class JourneyTest < ActiveSupport::TestCase
  test "should not save journey without name" do 
    journey = Journey.new
    assert_not journey.save, "Saved the journey without a name"
  end
end

require "test_helper"

class StepTest < ActiveSupport::TestCase
  test "should not save step without name" do
    step = steps(:discovery_call)
    step.name = nil
    assert_not step.save, "Saved the step without a name"
  end


end

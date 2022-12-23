require "test_helper"

class DeliverableTest < ActiveSupport::TestCase
  test "should not save deliverable without name" do
    deliverable = deliverables(:logo)
    deliverable.name = nil
    assert_not deliverable.save, "Saved the deliverable without a name"
  end

  test "should not save deliverable without status" do
    deliverable = deliverables(:logo)
    deliverable.status = nil
    assert_not deliverable.save, "Saved the deliverable without a status"
  end

  test "should not save deliverable without project" do 
    deliverable = deliverables(:logo)
    deliverable.project = nil
    assert_not deliverable.save, "Saved the deliverable without a project"
  end
end

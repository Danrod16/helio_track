require "test_helper"

class ProjectTest < ActiveSupport::TestCase
  test "should not save project without name" do
    project = projects(:adlante)
    assert_not project.save, "Saved the project without a name"
  end 

  test "should not save project without budget" do
    project = projects(:adlante)
    assert_not project.save, "Saved the project without a budget"
  end 

  test "should not save project without status" do
    project = projects(:adlante)
    assert_not project.save, "Saved the project without a status"
  end


end

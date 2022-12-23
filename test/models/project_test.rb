require "test_helper"

class ProjectTest < ActiveSupport::TestCase
  test "should save project without name" do
    project = projects(:website)
    project.name = nil
    assert_not project.save, "Saved the project without a name"
  end 


  test "should not save project without status" do
    project = projects(:website)
    project.status = nil
    assert_not project.save, "Saved the project without a status"
  end

end

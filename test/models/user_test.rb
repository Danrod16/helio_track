require "test_helper"

class UserTest < ActiveSupport::TestCase

  test "should save user with a company" do
    user = users(:daniel)
    user.company = companies(:google)
  end
end
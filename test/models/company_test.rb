require "test_helper"

class CompanyTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "should not save company without name" do
    company = companies(:google)
    assert_not company.save, "Saved the company without a name"
  end

  test "should not save company without industry" do
    company = companies(:google)
    assert_not company.save, "Saved the company without an industry"
  end

  test "should not save company without website" do
    company = companies(:google)
    assert_not company.save, "Saved the company without a website" 
  end

  test "website url should be valid" do
    company = companies(:google)
    company.website = "http://www.google.com"
    assert company.save, "Saved the company with a valid website"
  end

  test "website url should not be invalid" do
    company = companies(:google)
    company.website = "http://www.google"
    assert_not company.save, "invalid website"
  end

  test "should not save company without target" do
    company = companies(:google)
    assert_not company.save, "Saved the company without a target"
  end
end

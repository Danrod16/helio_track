require "test_helper"

class CompanyTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "should not save company without name" do
    company = Company.new
    assert_not company.save, "Saved the company without a name"
  end

  test "should not save company without industry" do
    company = Company.new
    assert_not company.save, "Saved the company without an industry"
  end

  test "should not save company without website" do
    company = Company.new
    assert_not company.save, "Saved the company without a website" 
  end

  test "website url should be valid" do
    company = Company.new
    company.name = "Google"
    company.industry = "Technology"
    company.website = "http://www.google.com"
    company.target = "Entrepreneurs"
    assert company.save!, "Saved the company with a valid website"
  end

  test "website url should not be invalid" do
    company = Company.new
    company.website = "http://www.google"
    assert_not company.save, "invalid website"
  end

  test "should not save company without target" do
    company = Company.new
    assert_not company.save, "Saved the company without a target"
  end
end

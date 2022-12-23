require "test_helper"

class ClientTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "should not save client without name" do
    client = clients(:adlante)
    assert_not client.save, "Saved the client without a name"
  end

  test "should not save client without industry" do
    client = clients(:adlante)
    assert_not client.save, "Saved the client without an industry"
  end

  test "should not save client without website" do
    client = clients(:adlante)
    assert_not client.save, "Saved the client without a website" 
  end

  test "website url should be valid" do
    client = clients(:adlante)
    client.website = "http://www.adlante.com"
    assert client.save, "Saved the client with a valid website"
  end

  test "website url should not be invalid" do
    client = clients(:adlante)
    client.website = "http://www.adlante"
    assert_not client.save, "invalid website"
  end

  test "should not save client without target" do
    client = clients(:adlante)
    assert_not client.save, "Saved the client without a target"
  end
end

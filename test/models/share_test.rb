require 'test_helper'

class ShareTest < ActiveSupport::TestCase
  setup do
    @share = Factory.build(:share)
  end

  test "should have from user" do
    assert_respond_to @share, :from
  end

  test "should have to user" do
    assert_respond_to @share, :to
  end

  test "should have a valid to email" do
    ['brubble@example'].each do |email|
      @share.to_email = email
      refute_equal @share.valid?, true
    end
  end
end

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "users have a name" do
    user = User.new
    refute user.valid?

    user.name = 'Tester'
    assert user.valid?
  end
end

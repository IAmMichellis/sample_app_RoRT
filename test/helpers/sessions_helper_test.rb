class SessionsHelperTest < ActionView::TestCase
  include SessionsHelper

  test "it be logged in after log in, and not after logout" do
    assert_not logged_in?
    log_in(User.first)
    assert logged_in?
    log_out
    assert_not logged_in?
  end
end

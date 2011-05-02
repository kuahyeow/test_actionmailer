require 'test_helper'

class UserMailerTest < ActionMailer::TestCase
  test "signup with actionmailer 3 api" do
    mail = UserMailer.signup
    assert_equal "Signup", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "signup with actionmailer 3 OldApi" do
    mail = UserMailer.old_signup
    assert_equal "Signup", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end

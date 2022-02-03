require 'test_helper'

class CoachmailerMailerTest < ActionMailer::TestCase
  test "Coach_Created" do
    mail = CoachmailerMailer.Coach_Created
    assert_equal "Coach created", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end

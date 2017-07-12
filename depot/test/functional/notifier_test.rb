require 'test_helper'

class NotifierTest < ActionMailer::TestCase
  test "order_receive" do
    mail = Notifier.order_received(orders(:one))
    assert_equal "Pragmatic Store Orer Confirmation", mail.subject
    assert_equal ["dave@exampple.org"], mail.to
    assert_equal ["depot@example.com"], mail.from
    assert_match /1 x Programming Ruby 1.9/", mail.body.encoded
  end

  test "order_shipped" do
    mail = Notifier.order_shipped
    assert_equal "Pragmatic Store Order shipped", mail.subject
    assert_equal ["dave@example.org"], mail.to
    assert_equal ["depot@example.com"], mail.from
    assert_match /<td>1&times;<\/td>\s*<td>Programming Ruby 1.9<\/td>/, mail.body.encoded
  end

end

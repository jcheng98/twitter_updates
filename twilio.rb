require 'twilio-ruby'
account_sid = 'ACe330ba04d082392df4cb3511dcb72cec'
auth_token = '2008ea097713e401a16c54029058da82'

class Texting

  def recipient=(recipient)
    @recipient = recipient
  end

  def recipient
    @recipient
  end

  def body=(body)
    @body = body
  end

  def body
    @body
  end

  def send(account_sid, auth_token)


    @client = Twilio::REST::Client.new(account_sid, auth_token)


    @client.account.messages.create(
      :from => '+18152642023',
      :to => @recipient,
      :body => @body
    )

  end

end

new_text = Texting.new
new_text.recipient=('+16463061463')
new_text.body=('lmao hi')
new_text.send(account_sid, auth_token)
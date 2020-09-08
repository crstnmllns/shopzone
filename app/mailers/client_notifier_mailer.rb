class ClientNotifierMailer < ApplicationMailer
  default :from => 'tweetpruebadesafiolatam@gmail.com'

  # send a signup email to the user, pass in the user object that   contains the user's email address
  def send_signup_email(client)
    @client = client
    mail( :to => @client.email,
    :subject => 'Thanks for signing up for our amazing app' )
  end
end

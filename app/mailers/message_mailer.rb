class MessageMailer < ActionMailer::Base
  default from: "info@tspdata.com"
  default to: "zemugisha@gmail.com"

  def new_message(message)
  	@message = message

  	mail subject: "Email from #{message.name}"
  end


end

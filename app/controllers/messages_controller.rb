class MessagesController < ApplicationController
	def new
		@message = Message.new
	end

	def create
		@message = Message.new(message_params)

		if @message.valid?
			MessageMailer.new_message(@message).deliver
			flash.now[:success]="Your message has been sent. Thank you!"
			puts "we just touched flash"
			render :new 

		else
			flash[:alert] = "An error occurred while delivering this message. "
			render :new
		end
	end

	private

	def message_params
		params.require(:message).permit(:name, :email, :description)

	end
end

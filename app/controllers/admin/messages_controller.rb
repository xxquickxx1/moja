class Admin::MessagesController < Admin::BaseController


	def new

	@user = User.find(params[:user_id])
	@quick_question = QuickQuestion.find(params[:message_id])
	@message = Message.new

	end


	def create
		@user = User.find(params[:user_id])
		@message = @user.messages.create(params[:message])
			if @message.save
				redirect_to admin_root_path, notice: 'You have replied to the message!'
			else
				redirect_to admin_root_path, alert: 'The message could not be sent, try again!'
		end

	end

end
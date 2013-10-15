class Admin::MessagesController < Admin::BaseController


  def find_user

  	@user = User.find(params[:user_id])

  end

  def index

  end

	def new

	@user = User.find(params[:user_id])
	@quick_question = QuickQuestion.find(params[:message_id])
	@message = @user.messages.new

	end


	def create
		@message = Message.create(params[:message])
			if @message.save
				redirect_to admin_inbox_path, notice: 'You have replied to the message!'
			else
				redirect_to admin_inbox_path, alert: 'The message could not be sent, try again!'
		end

	end

end
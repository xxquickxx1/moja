class Admin::MessagesController < Admin::BaseController


  def find_user
  	set_meta_tags :nofollow => true

set_meta_tags :nofollow => true

  	@user = User.find(params[:user_id])

  end

  def index
  	set_meta_tags :nofollow => true


  end

	def new
		set_meta_tags :nofollow => true


	@user = User.find(params[:user_id])
	@quick_question = QuickQuestion.find(params[:message_id])
	@message = @user.messages.new

	end


	def create
		set_meta_tags :nofollow => true

		@message = Message.create(params[:message])
			if @message.save
				redirect_to admin_inbox_path, notice: 'You have replied to the message!'
			else
				redirect_to admin_inbox_path, alert: 'The message could not be sent, try again!'
		end

	end

end
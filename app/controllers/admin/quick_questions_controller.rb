class Admin::QuickQuestionsController < Admin::BaseController

	def inbox

		@questions = QuickQuestion.order("id DESC")

	end

	def show
		@question = QuickQuestion.find(params[:id])
		@user = User.find(@question.user.id)

	end

	def new

	@user = User.find(params[:user_id])
	@message = QuickQuestion.find(24)
	@quick_question = QuickQuestion.new

	end


	def create
		@user = User.find(params[:user_id])
		@message = @user.quick_questions.create(params[:quick_question])
			if @message.save
				redirect_to root_url, notice: 'You have replied to the message!'
			else
				redirect_to rot_url, alert: 'The message could not be sent, try again!'
		end

	end


	def destroy


	end

end
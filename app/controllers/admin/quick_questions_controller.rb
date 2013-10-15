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
	@quick_question = QuickQuestion.find(params[:message_id])
	@message = Message.new

	end



	def destroy


	end

end
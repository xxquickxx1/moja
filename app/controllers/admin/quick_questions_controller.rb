class Admin::QuickQuestionsController < Admin::BaseController

	def inbox
set_meta_tags :nofollow => true

		@questions = QuickQuestion.order("id DESC")

	end

	def show
		set_meta_tags :nofollow => true

		@question = QuickQuestion.find(params[:id])
		@user = User.find(@question.user.id)

	end

	def new
		set_meta_tags :nofollow => true


	@user = User.find(params[:user_id])
	@quick_question = QuickQuestion.find(params[:message_id])
	@message = Message.new

	end



	def destroy


	end

end
class QuickQuestionsController < ApplicationController
  def create
  	@quick_question = QuickQuestion.create(params[:quick_question])
  	@quick_question.user_id = current_user.id
      if @quick_question.save
          redirect_to dashboard_path, notice: 'We have received your question! We will be back in touh very soon!'
      else 
        redirect_to :back, alert: 'Sorry but there was a problem with your entry, please try again.'
      end
  end
end

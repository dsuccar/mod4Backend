class UserQuestionsController < ApplicationController
  def index
    user_questions = UserQuestion.all
    render json: user_questions.to_json
  end

  def show
    user_question = UserQuestion.find(params[:id])
    render json: user_question.to_json
  end
end

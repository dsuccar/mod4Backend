class UsersController < ApplicationController
  def index
    users = User.all
    render json: users.to_json
  end

  def show
    user = User.find(params[:id])
    render json: user.to_json
  end

  def submitted_questions
    user = User.find(params[:id])
    submitted_questions = user.submitted_questions.all
    render json: submitted_questions.to_json
  end
end

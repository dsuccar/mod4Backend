Rails.application.routes.draw do

  resources :questions, only: [:index, :show]
  resources :users, only: [:index, :show]
  resources :user_questions, only: [:index, :show]
end

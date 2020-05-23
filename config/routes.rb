Rails.application.routes.draw do
  get 'users/:id/submitted_questions', to: 'users#submitted_questions'

  resources :questions, only: [:index, :show]
  resources :users, only: [:index, :show, ]
  resources :user_questions, only: [:index, :show, :create]
end

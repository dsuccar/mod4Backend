Rails.application.routes.draw do
  get 'users/:id/submitted_questions', to: 'users#submitted_questions'
  get 'users/:id/unique_question', to: 'users#unique_question'
  resources :questions, only: [:index, :show, :create]
  resources :users, only: [:index, :show, ]
  resources :user_questions, only: [:index, :show, :create]
end

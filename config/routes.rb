Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/dashboard', to: 'pages#dashboard'
  resources :courses, only: [:index, :show]
  resources :progresses, only: [:create]
  resources :quizzes, only: [:index]
  resources :questions, only: [:show, :create, :update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

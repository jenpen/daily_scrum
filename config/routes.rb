Rails.application.routes.draw do
  devise_for :users
  root to: 'boards#index'

  resources :boards do
    resources :notecards
  end

  resources :comments, only: [:create, :update, :destroy]

  get 'notecards', to: 'notecards#all'
end

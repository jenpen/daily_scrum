Rails.application.routes.draw do
  devise_for :users
  root to: 'boards#index'

  resources :boards do
    resources :notecards do
      resources :comments, only: [:create, :update, :destroy]
    end
  end

  get 'notecards', to: 'notecards#all'
end

Rails.application.routes.draw do
# Devise
  devise_for :users

# Custom Root
# sets up the root route
  root to: 'boards#index'

# Custom Routes
  # get 'boards/:board_id', to: 'notecards#index', except: [:new]
  get 'notecards', to: 'notecards#all'

# Nested Resources
  resources :boards, except: [:show] do
    resources :notecards
  end
  resources :notecards, except: [:index, :create, :new, :edit, :show, :update, :destroy] do
    resources :comments
  end

end

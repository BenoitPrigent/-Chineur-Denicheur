Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'
  resources :categories, only: [:show]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :admin do
    resources :categories, only: [:show] do
      resources :items, only: [:create, :update, :destroy]
    end
  end

end

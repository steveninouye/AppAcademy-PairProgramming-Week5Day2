Rails.application.routes.draw do

  resources :users, only: [:new, :create]
  resource :session, only: [:new, :create, :destroy]

  resources :subs
  resources :posts, except: [:index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

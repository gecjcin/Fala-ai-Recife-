Rails.application.routes.draw do
  root to: 'landing#index'

 
  devise_for :users
  devise_for :views
  devise_for :models
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end



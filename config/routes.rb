Rails.application.routes.draw do
  resources :games
  root 'api/v1/users#index'
  namespace :api do
  	namespace :v1 do
  		resources :users
  		resources :games
  	end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

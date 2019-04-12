Rails.application.routes.draw do
  root 'api/v1/users#index'
  post 'auth/login', to: 'api/v1/authentication#authenticate'
  post 'signup', to: 'api/v1/users#create'
  namespace :api do
  	namespace :v1 do
  		resources :users
  		resources :games
  		resources :game_sessions
      resources :authentication
  	end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

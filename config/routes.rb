Rails.application.routes.draw do
  use_doorkeeper
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  namespace :api do
    namespace :v1 do
      get '/me' => 'user#me'
    end
  end
  root to: 'home#show'
end

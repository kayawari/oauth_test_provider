Rails.application.routes.draw do
  use_doorkeeper
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  namespace :api do
    namespace :v1 do
      get '/me' => 'users#me'
    end
  end
  root to: 'home#show'
end

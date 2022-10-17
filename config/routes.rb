Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  devise_for :users, controllers: { sessions: 'sessions' }

  resources :movies do
    resources :reviews, except: [:show, :index]
  end

  root 'movies#index'

end

Rails.application.routes.draw do
  resources :goalies
  resources :skaters
  resources :upcoming_games
  resources :schedules
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'schedules#index'
end

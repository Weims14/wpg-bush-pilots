Rails.application.routes.draw do

  resources :team_records
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'schedules#index'

  get "roster",   to: "static_pages#roster",   as: "roster"
  get "schedule", to: "static_pages#schedule", as: "staticSchedule"
  get "seasons",   to: "static_pages#seasons",   as: "seasons"
end

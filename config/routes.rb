Rails.application.routes.draw do

  resources :team_records
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'schedules#index'

  get "static_pages/roster.html.erb", to: "static_pages#roster", as: "roster"
  get "static_pages/schedule.html.erb", to: "static_pages#schedule", as: "staticSchedule"
end

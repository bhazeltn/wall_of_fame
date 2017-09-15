Rails.application.routes.draw do
  resources :elements
  devise_for :admins, controllers: { registrations: "registrations"}

  resources :teams
  resources :external_awards
  resources :club_awards
  resources :ab_teams
  resources :star_with_honors
  resources :gold_tests
  resources :star_golds
  resources :skaters
  resources :competitions
  resources :goves
  resources :scores

  get 'welcome/index'

  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

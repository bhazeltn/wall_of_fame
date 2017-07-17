Rails.application.routes.draw do
  resources :star_golds
  resources :skaters
  resources :competitions
  resources :goves
  get 'welcome/index'
  
  root 'welcome#index'

  resources :scores
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  resources :gold_tests
  namespace :dynamic_selectable do
    get 'groups/:group_id/levels', to: 'group_levels#index', as: :group_levels
    get 'levels/:level_id/events', to: 'level_events#index', as: :level_events
  end

  resources :star_golds
  resources :skaters
  resources :competitions
  resources :goves
  get 'welcome/index'
  
  root 'welcome#index'

  resources :scores
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

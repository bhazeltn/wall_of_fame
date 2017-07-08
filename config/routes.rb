Rails.application.routes.draw do
  get 'level/new'

  get 'level/create'

  get 'level/update'

  get 'level/edit'

  get 'level/destroy'

  get 'level/index'

  get 'level/show'

  get 'welcome/index'
  
  root 'welcome#index'

  resources :scores
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

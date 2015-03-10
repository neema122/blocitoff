Rails.application.routes.draw do
  get 'user/show', to: 'users#show', as: 'user_show'

  devise_for :users
  resources :items
  
  get 'welcome/index'

  get 'welcome/about'

    root to: 'welcome#index'
end
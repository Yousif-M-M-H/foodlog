Rails.application.routes.draw do
  resources :categories
  get 'archive/index'
  resources :entres
  root to: "entres#index"
  
end

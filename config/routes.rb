Rails.application.routes.draw do
  resources :jobs
  resources :categories
  root 'jobs#index' 
end

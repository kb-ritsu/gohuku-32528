Rails.application.routes.draw do
  devise_for :users
  devise_for :staffs
  
  root to: "users#index"

  resources :users
end

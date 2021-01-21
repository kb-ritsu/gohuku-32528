Rails.application.routes.draw do
  devise_for :staffs
  
  root to: "users#index"

  resources :users do
    collection do
      get 'search'
    end
  end

  resources :sizes, only: [:new,:create]
end

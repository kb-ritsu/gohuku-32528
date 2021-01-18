Rails.application.routes.draw do
  devise_for :staffs
  
  root to: "users#index"

  resources :users do
    collection do
      get 'search'
    end
  end
end

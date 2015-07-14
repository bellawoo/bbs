Rails.application.routes.draw do
  root to: "boards#index"
  
  devise_for :users

  resources :boards do
    resources :posts do
      resources :comments
    end
  end
end

# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
Rails.application.routes.draw do
  root to: "index#index", as: "index"
  resources :work_samples, except: %i[index]
  resources :users
  resources :sessions, only: %i[new]
  match "/sessions/create", to: "sessions#create", as: "create_session", via: :post
  match "/sessions/logout", to: "sessions#destroy", as: "revoke_session", via: :get
end

Rails.application.routes.draw do
  root to: "index#index", as: "index"
  resources :work_samples, except: %i[index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

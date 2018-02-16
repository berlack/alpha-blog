Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "pages#homepage"
  get "about", to: "pages#about"
  get "sevr", to: "pages#sevr"

  resources :articles

  get "signup", to: "users#new"
  resources :users, except: [:new]
  # post "users", to: "users#create"

end

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # root                   to: "pages#home"
  root to: "pages#landing"

  get "about", to: "pages#about"

  get 'projects', to: 'projects#index'
  get 'projects/project', to: 'projects#show'


  # Defines the root path route ("/")
  # root "articles#index"
end

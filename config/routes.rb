Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # root                   to: "pages#home"
  root to: "pages#home"

  resources :projects

  get "about", to: "pages#about"

  get "test", to: "pages#test"
  get "lettering_first", to: "pages#lettering_first"
  get "lettering_second", to: "pages#lettering_second"


  get 'projects', to: 'projects#index'
  get 'projects/:id', to: 'projects#show'
  get 'about me', to: "pages#about"
  get 'contact', to: "pages#contact"

  get '/app/assets/CV_ENG.pdf', to: 'static#show'


  # Defines the root path route ("/")
  # root "articles#index"
end

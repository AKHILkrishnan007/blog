  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

Rails.application.routes.draw do
  
  
  get "posts/index" => "posts#index"
  root "posts#index"

  get "posts/view" => "posts#view"
  get "posts/new"

  post "posts/create"
  
  

end

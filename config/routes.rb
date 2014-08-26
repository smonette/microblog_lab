Rails.application.routes.draw do
  #don't need this due to resources:passwords
  # get 'passwords/new'

  root to: "tags#index"

  get "/about_us", to: "site#about"

  get "/login", to: "session#new"

  post "/login", to: "session#create"

  delete "/logout", to: "session#destroy"

  get "/logout", to: "session#destroy"

  get "/signup", to: "users#new"

  resources :passwords

  resources :users do
    resources :posts
    resources :pages
  end

  resources :tags
  resources :comments

  post "users/:user_id/posts/:post_id/comments", to: "comments#create"

  post "/comments/:id/children", to: "comments#create_child"

end
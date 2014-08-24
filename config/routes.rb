Rails.application.routes.draw do

  root to: "tags#index"

  get "/about_us", to: "site#about"

  resources :users do
    resources :posts
    resources :pages
  end

  resources :tags
  resources :comments

  #specific user's posts associated with a specific tag
  # get "/users/:user_id/tags/:tag_id", to: "users#show_posts_by_tag"

  post "users/:user_id/posts/:post_id/comments", to: "comments#create"

  post "/comments/:id/children", to: "comments#create_child"

end
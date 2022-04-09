Rails.application.routes.draw do
  get 'posts/new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get '/' => "users#top"
  get "/new" => "users#new"
  post "/login" => "users#login"
  post "/logout" => "users#logout"
  get "/login_form" => "users#login_form"
  post "/relogin" => "users#relogin"

  get "/users/show" => "users#show"

  get "/posts/new" => "posts#new"
  post "/posts/create" => "posts#create"
  get "/posts/show" => "posts#show"
  post "/posts/:id/destroy" => "posts#destroy"
  get "/posts/:id/edit" => "posts#edit"
  post "/posts/:id/recreate" => "posts#recreate"
  get "/posts/:id" => "posts#each"
end

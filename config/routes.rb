Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get '/' => "users#top"
  get "/login_form" => "users#login_form"
  post "/login" => "users#login"
  post "/logout" => "users#logout"

  get "/users/show" => "users#show"
end

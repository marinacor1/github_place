Rails.application.routes.draw do                         # ~> NameError: uninitialized constant Rails
  root "users#show"
  get "/auth/github", as: :github_login
  get "/auth/github/callback", to: "sessions#create"
  delete "/logout", to: "sessions#destroy", as: :logout

  get "/users/repos", to: "repos#index", as: :repos
end

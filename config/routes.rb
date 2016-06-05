Rails.application.routes.draw do                         # ~> NameError: uninitialized constant Rails
  root "users#show"
  get "/auth/github", as: :github_login
  get "/auth/github/callback", to: "sessions#create"
  delete "/logout", to: "sessions#destroy", as: :logout
end

# ~> NameError
# ~> uninitialized constant Rails
# ~>
# ~> /Users/marinacorona/Turing/3Module/github_place/config/routes.rb:1:in `<main>'

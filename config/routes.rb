Rails.application.routes.draw do
  resources :github_repos, only: %i[index]
end

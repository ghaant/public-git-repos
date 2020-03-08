Rails.application.routes.draw do
  root to: 'github_repos#index'
  get '/search' => 'github_repos#search'
end

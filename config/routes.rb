Rails.application.routes.draw do
  resources :github_repos, only: %i[], param: :owner do
    get 'user_repos', to: 'github_repos#user_repos'
  end
end

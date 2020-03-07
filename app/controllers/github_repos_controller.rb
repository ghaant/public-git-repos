class GithubReposController < ApplicationController
  def user_repos
    client = Github::Client.new

    response = client.user_public_repos(params[:github_repo_owner])

    render json: response.body
  end
end

class GithubReposController < ApplicationController
  def index
    client = Github::Client.new

    response = client.user_public_repos(params[:owner])

    render json: response.body
  end
end

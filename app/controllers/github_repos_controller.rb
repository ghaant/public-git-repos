# frozen_string_literal: true

class GithubReposController < ApplicationController
  def index; end

  def search
    client = Github::Client.new

    if params[:filters]&.key?(:owner)
      search_value = params[:filters][:owner]
    elsif params[:filters].nil?
      search_value = ''
    else
      render(json: { message: 'A wrong parameter name', status: 406 }) && return
    end

    response = client.user_public_repos(search_value)

    if response.body == '[]'
      flash[:alert] = 'A repository with such owner is not found.'

      return render action: :index
    end

    render json: response.body
  end
end

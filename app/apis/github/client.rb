# frozen_string_literal: true

require './lib/github/connection.rb'

module Github
  class Client
    def user_public_repos(username)
      get_request(username)
    end

    private

    def get_request(username)
      response = Github::Connection.api.get("users/#{username}/repos")
      JSON.parse(response.body)
    end
  end
end

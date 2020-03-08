# frozen_string_literal: true

require './lib/github/connection.rb'

module Github
  class Client
    def user_public_repos(username)
      endpoint = if username.blank?
                   'repositories'
                 else
                   "users/#{username}/repos"
                 end

      get_request(endpoint)
    end

    private

    def get_request(endpoint)
      Github::Connection.api.get(endpoint)
    end
  end
end

# frozen_string_literal: true

require './lib/github/connection.rb'

module Github
  class Client
    def public_repos(params: {})
      get_request(params)
    end

    private

    def get_request(params)
      response = Github::Connection.api.get('/repositories', params)
      JSON.parse(response.body)
    end
  end
end

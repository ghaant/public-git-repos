# frozen_string_literal: true

module Github
  class Connection
    API_BASE = 'https://api.github.com'

    def self.api
      Faraday.new(API_BASE) do |faraday|
        faraday.response :logger
        faraday.request :url_encoded
        faraday.adapter Faraday.default_adapter
        faraday.headers['Accept'] = 'application/vnd.github.v3+json'
      end
    end
  end
end

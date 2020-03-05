# frozen_string_literal: true

class Connection
  API_ENDPOINT = 'https://api.github.com'

  def self.api
    Faraday.new(API_ENDPOINT) do |client|
      client.request :url_encoded
      client.adapter Faraday.default_adapter
    end
  end
end

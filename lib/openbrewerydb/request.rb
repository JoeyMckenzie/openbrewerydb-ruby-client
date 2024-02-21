# frozen_string_literal: true

module OpenBreweryDb
  # Sends an HTTP request to Open Brewery DB at the specified endpoint.
  class Request
    attr_reader :endpoint, :timeout, :per_page

    def initialize(endpoint, options = nil)
      @endpoint = endpoint
      @timeout = options&.fetch(:timeout) || OpenBreweryDb::Metadata::DEFAULT_TIMEOUT_SECONDS
      @per_page = options&.fetch(:per_page) || OpenBreweryDb::Metadata::DEFAULT_PER_PAGE
    end
  end
end

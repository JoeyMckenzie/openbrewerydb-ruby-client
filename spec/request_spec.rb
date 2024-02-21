# frozen_string_literal: true

require "rspec"
require "openbrewerydb/request"
require "openbrewerydb/metadata"

RSpec.describe "request builder" do
  before do
    # Do nothing
  end

  after do
    # Do nothing
  end

  context "constructing a request with options" do
    it "has a timeout when assigned" do
      request = OpenBreweryDb::Request.new("endpoint", {
                                             timeout: 2,
                                             per_page: 10
                                           })

      expect(request.timeout).to eq(2)
      expect(request.per_page).to eq(10)
    end

    it "configures default options if none are passed" do
      request = OpenBreweryDb::Request.new("endpoint")

      expect(request.timeout).to eq(OpenBreweryDb::Metadata::DEFAULT_TIMEOUT_SECONDS)
      expect(request.per_page).to eq(OpenBreweryDb::Metadata::DEFAULT_PER_PAGE)
    end
  end
end

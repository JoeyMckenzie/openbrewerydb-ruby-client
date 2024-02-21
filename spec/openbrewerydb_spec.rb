# frozen_string_literal: true

RSpec.describe OpenBreweryDb do
  it "has the correct version number" do
    expect(OpenBreweryDb::VERSION).not_to be nil
    expect(OpenBreweryDb::VERSION).to be("0.1.0")
  end

  it "does something useful" do
    expect(false).to eq(false)
  end
end

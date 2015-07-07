require 'spec_helper'

describe WO::Loader do
  let(:loader) { described_class.new }

  describe "#config" do
    it "returns config hash" do
      config_hash = { "url" => "https://wo-app.herokuapp.com",
                      "token" =>  "dfddda19-e44d-4f9f-8e51-8eeb9df9fa1e" }

      expect(loader.config).to eq (config_hash)
    end
  end

  describe "#to_h" do
    it "returns config hash" do
      config_hash = { "url": "https://wo-app.herokuapp.com",
                      "token": "dfddda19-e44d-4f9f-8e51-8eeb9df9fa1e" }

      expect(loader.to_h).to eq config_hash
    end
  end
end

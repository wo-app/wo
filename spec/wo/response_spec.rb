require 'spec_helper'

describe WO::Response do

  describe "#to_json" do
    it "returns response json" do
      faraday_response = double(Faraday::Response, body: '{"repo":"test"}')
      response = described_class.new(faraday_response)

      expect(response.to_json).to eq ({ "repo" => "test" })
    end
  end
end

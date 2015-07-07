require 'spec_helper'

describe WO::Client do
  let(:client) { described_class.new }

  describe "#initialize" do
    it "assigns default API url" do
      expect(client.api_url).to eq WO::Client::API_URL
    end

    it "assigns API url" do
      client = described_class.new(url: "http://test.com")

      expect(client.api_url).to eq "http://test.com"
    end
  end

  describe "#doings" do
    it "returns WO::Response instance" do
      options = {}

      allow_any_instance_of(WO::Configure).to receive(:to_h) { {} }
      allow(Faraday).to receive(:get) { double(Faraday::Response) }

      expect(client.doings(options)).to be_a WO::Response
    end
  end

  describe "#create_doing" do
    it "returns WO::Response instance" do
      options = {}

      allow_any_instance_of(WO::Configure).to receive(:to_h) { {} }
      allow(Faraday).to receive(:post) { double(Faraday::Response) }

      expect(client.create_doing(options)).to be_a WO::Response
    end
  end

  describe "#create_organization" do
    it "returns WO::Response instance" do
      allow_any_instance_of(WO::Configure).to receive(:to_h) { {} }
      allow(Faraday).to receive(:post) { double(Faraday::Response) }

      expect(client.create_organization).to be_a WO::Response
    end
  end
end

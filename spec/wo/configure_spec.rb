require 'spec_helper'

describe WO::Configure do
  let(:configure) { described_class.new(token: "token", repo: "repo", branch: "branch", user_name: "user_name") }

  describe "#initialize" do
    it "assigns instance variables" do
      expect(configure.token).to     eq "token"
      expect(configure.repo).to      eq "repo"
      expect(configure.branch).to    eq "branch"
      expect(configure.user_name).to eq "user_name"
    end
  end

  describe "#to_h" do
    it "returns WO::Response instance" do
      configure_hash = {
        "organization[token]": "token",
        "doing[repo]":         "repo",
        "doing[branch]":       "branch",
        "user[name]":          "user_name",
      }


      expect(configure.to_h).to eq configure_hash
    end
  end
end

require 'spec_helper'

describe WO::Response::Format::Timeline do
  class Timeline
    include WO::Response::Format::Timeline
  end

  let(:timeline) { Timeline.new }

  describe "#to_timeline" do
    it "returns timeline" do
      doings = { "users" => [ { "name" => "name",
                                "recent_repo" => "recent_repo",
                                "recent_branch" => "recent_branch",
                                "time_ago" => "time_ago" } ] }
      allow(timeline).to receive(:to_json) { doings }

      expect(timeline.to_timeline).to eq ["\e[0;92;49mname:\e[0m \e[0;97;49mrecent_repo/recent_branch\e[0m  \e[0;90;49mtime_ago\e[0m"]
    end
  end
end

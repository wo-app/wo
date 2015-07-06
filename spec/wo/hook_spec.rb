require 'spec_helper'

describe WO::Hook do
  describe "#hook" do
    let(:hook) { described_class.new("zsh") }

    it "calls WO::Hook::Zsh#hook" do
      expect_any_instance_of(WO::Hook::Zsh).to receive(:hook)

      hook.hook
    end
  end
end

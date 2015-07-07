require 'spec_helper'

describe WO::Hook::Zsh do
  let(:zsh) { described_class.new }

  describe "#hook" do
    it "returns hook for zsh" do
      hook = %(
_wo_hook() {
  repo_path=`git rev-parse --show-toplevel 2>&1`

  if [[ "$?" == 0 ]] ; then
    token=`cat ${repo_path}/.wo 2>&1`

    if [[ "$?" == 0 ]] ; then
      repo=`basename ${repo_path}`
      branch=`git rev-parse --abbrev-ref HEAD`
      user_name=`git config user.name`

      wo doing ${repo} ${branch} ${user_name}
    fi
  fi
}

_wo_hook_background() {
  (_wo_hook &)
}

typeset -ag precmd_functions
if [[ -z $precmd_functions[(r)_wo_hook_background] ]]; then
  precmd_functions+=_wo_hook_background;
fi
        )

      expect(zsh.hook).to eq hook
    end
  end
end

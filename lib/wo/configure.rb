module WO
  class Configure
    def initialize(options = {})
      [:token, :repo, :branch, :user_name].each do |key|
        next unless value = options[key]
        instance_variable_set(:"@#{key}", value)
      end
    end

    def to_h
      {
        "organization[token]": @token,
        "doing[repo]":         @repo,
        "doing[branch]":       @branch,
        "user[name]":          @user_name,
      }
    end
  end
end

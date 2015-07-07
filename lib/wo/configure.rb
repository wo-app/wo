module WO
  class Configure
    attr_reader :token, :repo, :branch, :user_name

    def initialize(options = {})
      [:token, :repo, :branch, :user_name].each do |key|
        next unless value = options[key]
        instance_variable_set(:"@#{key}", value)
      end
    end

    def to_h
      {
        "organization[token]" => @token,
        "doing[repo]"         => @repo,
        "doing[branch]"       => @branch,
        "user[name]"          => @user_name,
      }
    end
  end
end

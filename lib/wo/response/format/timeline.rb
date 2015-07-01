module WO
  class Response
    module Format
      module Timeline
        # TODO: refactor
        # TODO: handle colorize

        def to_timeline
          to_json["doings"].map do |doing|
            user_name = doing["user"]["name"]
            repo_branch = "#{doing["repo"]}/#{doing["branch"]}"
            time = doing["time_ago"]

            sprintf(format, user_name, repo_branch, time)
          end
        end

        private

        def format
          "#{bold}#{green}%#{max_length_user_name}s: #{white}%#{max_length_branch}s #{black}%#{max_length_time_ago}s#{clear}"
        end

        def max_length_user_name
          @max_length_user_name ||= to_json["doings"].map { |doing| doing["user"]["name"].length }.max
        end

        def max_length_branch
          @max_length_branch ||= to_json["doings"].map { |doing| "#{doing["repo"]}/#{doing["branch"]}".length }.max
        end

        def max_length_time_ago
          @max_length_time_ago ||= to_json["doings"].map { |doing| "#{doing["time_ago"]}".length }.max
        end

        def bold
          "\e[1m"
        end

        def green
          "\e[32m"
        end

        def white
          "\e[37m"
        end

        def black
          "\e[30m"
        end

        def clear
          "\e[0m"
        end
      end
    end
  end
end

module WO
  class Response
    include Format::Timeline
    attr_reader :result

    def initialize(result)
      @result = result
    end

    def to_json
      JSON.parse(@result.body)
    end
  end
end

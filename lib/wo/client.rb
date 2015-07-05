module WO
  class Client
    API_URL = "http://wo-app.herokuapp.com"

    def initialize(options = {})
      @api_url = options[:url] ? options[:url] : API_URL
    end

    def doings(options = {})
      request(:get, "#{@api_url}/users", Configure.new(options).to_h)
    end

    def create_doing(options = {})
      request(:post, "#{@api_url}/doings", Configure.new(options).to_h)
    end

    def create_organization
      request(:post, "#{@api_url}/organizations")
    end

    private

    def request(method, path, options = {})
      faraday_response = Faraday.send(method, *[path, options])
      Response.new(faraday_response)
    end
  end
end

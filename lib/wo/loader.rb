module WO
  class Loader
    WO_FILE_NAME = ".wo"

    attr_reader :file_path, :file_full_path

    def initialize(wo_file_path = nil)
      @file_path = wo_file_path || repo_path
      @file_full_path = "#{@file_path}/#{WO_FILE_NAME}"
    end

    def config
      @config ||= YAML.load_file(@file_full_path)
    end

    def to_h
      { url: config["url"], token: config["token"] }
    end

    private

    def repo_path
      `git rev-parse --show-toplevel`.chomp
    end
  end
end

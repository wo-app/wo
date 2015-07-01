module WO
  class Hook
    attr_reader :sh

    def initialize(sh)
      @sh = sh
    end

    def hook
      constantize.new.hook
    end

    private

    def constantize
      Kernel.const_get("WO").const_get("Hook").const_get(@sh.capitalize)
    end
  end
end

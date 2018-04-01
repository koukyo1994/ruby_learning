module AwsomeApi
  @base_url = ''
  @debug_mode = false

  class << self
    def base_url= val
      @base_url = val
    end

    def base_url
      @base_url
    end

    def debug_mode= val
      @debug_mode = val
    end

    def debug_mode
      @debug_mode
    end
  end
end

module Flip
  class Definition

    attr_accessor :key
    attr_accessor :options

    def initialize(key, options = {})
      @key = key
      @options = options.reverse_merge \
        description: key.to_s.humanize + "."
    end

    alias :name :key

    def description
      options[:description]
    end

    def to_s
      @key.to_s
    end
    
  end
end

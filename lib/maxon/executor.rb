module Maxon
  class Executor
    LIGHT_SCRAB = /\b\d+\b/.freeze
    DEEP_SCRAB = /\d/.freeze

    attr_writer :storage

    def initialize(storage, source = STDIN)
      @storage = storage
      @source = source
    end

    def light_extract
      @source.each_line(' ') do |num|
        @storage << num.to_i if LIGHT_SCRAB.match?(num)
      end
    end

    # allowed array as aggregator, show expenses and circumstances
    def deep_extract
      aggregator = ''

      @source.each_char do |symbol|
        if DEEP_SCRAB.match?(symbol)
          aggregator.insert(-1, symbol)
        else
          next if aggregator.empty?

          @storage << aggregator.to_i
          aggregator.clear
        end
      end
    end
  end
end

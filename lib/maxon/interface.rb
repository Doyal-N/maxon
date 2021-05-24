# frozen_string_literal: true

module Maxon
  module Interface
    def self.notify(text)
      text
    end

    def self.error_message(text)
      raise ArgumentError, text
    end
  end
end

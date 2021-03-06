# frozen_string_literal: true

require_relative 'maxon/executor'
require_relative 'maxon/store'
require_relative 'maxon/interface'
require 'set'

module Maxon
  def self.check
    store = Store.new(SortedSet.new)
    job = Executor.new(store.storage)

    Interface.error_message('first parametr must exist') if ARGV[0].nil?
    Interface.error_message('first parametr must be greater than zero') if ARGV[0].to_i.negative?

    if ARGV[1]
      job.deep_extract
    else
      job.light_extract
    end

    puts Interface.notify("Our result: \n\n")
    puts store.show_result

    store.clear_storage
  end
end

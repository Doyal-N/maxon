module Maxon
  class Store
    attr_reader :storage

    def initialize(storage, size = ARGV[0])
      @storage = storage
      @size = size.to_i
    end

    def show_result
      storage.max(@size)
    end

    # depending on the situation, the release (cleaning) of unnecessary elements (more than parametr n)
    # can be done earlier, implement functional - delete nonmax elements
    def clear_storage
      storage.clear
    end
  end
end

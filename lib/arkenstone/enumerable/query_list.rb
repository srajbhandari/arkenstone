module Arkenstone
  class QueryList < Array
    def initialize(initial_value)
      if initial_value.class == Array
        concat initial_value
      else
        push initial_value
      end
    end

    # Assume that every element is an Arkenstone::Document
    def to_json(options = nil)
      map { |element| element.attributes }.to_json(options)
    end
  end
end

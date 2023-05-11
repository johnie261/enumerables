# frozen_string_literal: true

require_relative 'my_enumerable'

# This class represents a list of elements that can be iterated over using the #each method.
class MyList
  include MyEnumerable
  include Enumerable

  attr_reader :list

  def initialize(*args)
    @list = args
  end

  def each(&block)
    @list.each(&block)
  end
end

list = MyList.new(1, 2, 3, 4)

results = list.all? { |e| e < 5 }
puts results

results = list.all? { |e| e > 5 }
puts results

results = list.any? { |e| e == 2 }
puts results

results = list.any? { |e| e == 5 }
puts results

result = list.filter(&:even?)
puts result

require_relative 'MyEnumerable'

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

results = list.filter { |e| e.even? }
puts results

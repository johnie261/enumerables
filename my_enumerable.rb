# frozen_string_literal: true

# This module provides additional enumerable methods for the MyList class.
module MyEnumerable
  def all?(&block)
    each { |elem| return false unless block.call(elem) }
    true
  end

  def any?(&block)
    each { |elem| return true if block.call(elem) }
    false
  end

  def filter(&block)
    result = []
    each { |elem| result << elem if block.call(elem) }
    result
  end
end

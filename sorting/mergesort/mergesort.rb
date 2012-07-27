#!/bin/ruby

def merge(left, right)
  [].tap do |result|
    while (left.any? || right.any?)
      if left.any? && right.any?
        if left.first <= right.first
          result << left.shift
        else
          result << right.shift
        end
      elsif left.any?
        result << left.shift
      else
        result << right.shift
      end
    end
  end
end

def merge_sort(array)
  return array if array.length <= 1

  middle = array.length / 2
  left = merge_sort(array[0..(middle-1)])
  right = merge_sort(array[middle..array.length])

  merge(left, right)
end

p merge_sort([5,6,3,8,10,21,34,23,1,4])

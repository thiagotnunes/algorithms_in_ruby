#!/bin/ruby

def combine(set, k)
  combine_it(set, k)
end

def combine_it(set, k, from = 0, combination = [])
  if combination.length == k
    p combination
  else
    for i in from..(set.length - 1)
      combine_it(set, k, i+1, combination + [set[i]])
    end
  end
end

combine([1,2,3,4], 2)

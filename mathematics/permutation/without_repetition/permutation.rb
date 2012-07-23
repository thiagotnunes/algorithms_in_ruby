#!/bin/ruby

def permute(set, permutations = [])
  if (permutations.length == set.length)
    p permutations
  else
    set.each do |e|
      unless permutations.include? e
        permute(set, permutations + [e])
      end
    end
  end
end

permute([1,2,3,4])

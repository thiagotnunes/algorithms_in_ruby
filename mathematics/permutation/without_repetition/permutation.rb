#!/bin/ruby

def permute(set, used = [], permutations = [])
  if (permutations.length == set.length)
    p permutations
  else
    set.each do |e|
      unless used.include? e
        permute(set, used + [e], permutations + [e])
      end
    end
  end
end

permute([1,2,3,4], [])

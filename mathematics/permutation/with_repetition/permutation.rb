#!/bin/ruby

$set = [1,2,3,4]

def permute(i, permutations)
  if (i == $set.length)
    p permutations
    return
  end

  $set.each do |e|
    permutations[i] = e
    permute(i+1, permutations)
  end
end

permute(0, [])

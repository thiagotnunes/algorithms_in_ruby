#!/bin/ruby

$set = [1,2,3,4]

def permute(i, permuted = [], used = [])
  if (i == $set.length)
    p permuted
    return
  end

  $set.each do |e|
    unless used.include? e
      permuted[i] = e
      used << e
      permute(i+1, permuted, used)
      used.delete e
    end
  end
end

permute(0) 

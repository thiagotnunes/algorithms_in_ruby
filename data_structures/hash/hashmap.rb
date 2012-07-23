#!/bin/ruby

class HashMap
  def initialize
    @lists = []
  end

  def put(key, value)
    hash = hash_the(key)
    @lists[hash] = [] if @lists[hash].nil?
    @lists[hash] << Bucket.new(key, value)
  end

  def get(key)
    hash = hash_the(key)
    value = nil
    @lists[hash].each do |bucket|
      if bucket.key == key 
        value = bucket.value
      end
    end
    value
  end

  private

  def hash_the(key)
    1               
  end
end

class Bucket
  attr_reader :key, :value

  def initialize(key, value)
    @key = key
    @value = value
  end
end

map = HashMap.new

map.put(1,2)
map.put("a", "b")

p map.get(1)
p map.get("a")

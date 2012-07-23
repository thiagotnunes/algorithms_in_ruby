#!/bin/ruby

class HashMap
  def initialize
    @lists = []
  end

  def put(key, value)
    hash = key.monkey_hash
    @lists[hash] = [] if @lists[hash].nil?
    @lists[hash] << Bucket.new(key, value)
  end

  def get(key)
    hash = key.monkey_hash
    value = nil
    @lists[hash].each do |bucket|
      if bucket.key == key 
        value = bucket.value
      end
    end
    value
  end
end

class Bucket
  attr_reader :key, :value

  def initialize(key, value)
    @key = key
    @value = value
  end
end

class String
  def monkey_hash
    self.length
  end
end

class Fixnum
  def monkey_hash
    self
  end
end

map = HashMap.new

map.put(1,2)
map.put("a", "b")

p map.get(1)
p map.get("a")

require 'spec_helper'
require 'heap/heap'
require 'heap/max_heap'

describe "Max Heap" do
  before(:each) do
    @max = MaxHeap.new
  end

  it "should insert a single element" do
    @max.insert(10)
    @max.heap.should == [10]
  end

  it "should keep the heap integrity after each insert" do
    @max.insert(10).insert(5).insert(2).insert(7).insert(9).insert(3)
    @max.heap.should == [10,9,3,5,7,2]
  end

  it "should extract the maximum and mantain heap integrity" do
    @max.insert(10).insert(5).insert(2).insert(7).insert(9).insert(3)
    @max.extract_max.should == 10
    @max.heap.should == [9,7,3,5,2]
  end
end

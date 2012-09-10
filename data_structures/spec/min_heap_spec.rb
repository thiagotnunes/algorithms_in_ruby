require 'spec_helper'
require 'heap/heap'
require 'heap/min_heap'

describe "Min Heap" do
  before(:each) do
    @min = MinHeap.new
  end

  it "should insert a single element" do
    @min.insert(10)
    @min.heap.should == [10]
  end

  it "should keep the heap integrity after each insert" do
    @min.insert(10).insert(5).insert(2).insert(7).insert(9).insert(3)
    @min.heap.should == [2,7,3,10,9,5]
  end

  it "should extract the minimum and mantain heap integrity" do
    @min.insert(10).insert(5).insert(2).insert(7).insert(9).insert(3)
    @min.extract_min.should == 2
    @min.heap.should == [3,7,5,10,9]
  end
end

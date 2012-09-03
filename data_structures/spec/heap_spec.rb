require_relative '../heap/heap'

class Dummy
end

describe "Heap" do
  before(:each) do
    @heap = Dummy.new
    @heap.extend(Heap)
  end

  context "Retrieving parent" do
    it "returns 0 for the parent of 0" do
      @heap.parent_for(0).should == 0
    end

    it "returns 0 for the parent of 1" do
      @heap.parent_for(1).should == 0
    end

    it "returns 0 for the parent of 2" do
      @heap.parent_for(2).should == 0
    end

    it "returns 1 for the parent of 3" do
      @heap.parent_for(3).should == 1
    end

    it "returns 1 for the parent of 4" do
      @heap.parent_for(4).should == 1
    end

    it "returns 2 for the parent of 5" do
      @heap.parent_for(5).should == 2
    end

    it "returns 2 for the parent of 6" do
      @heap.parent_for(6).should == 2
    end
  end

  context "Bubblying up" do
    it "bubbles up an element to the beggining when it is the largest" do
      @heap.bubble_up(3, [4,2,1,7]).should == [7,4,1,2]
    end

    it "bubbles up an element to the middle when it is larger than all its parents" do
      @heap.bubble_up(3, [7,2,1,4]).should == [7,4,1,2]
    end

    it "does nothing when an element is smaller than its immediate parent" do
      @heap.bubble_up(3, [7,4,1,2]).should  == [7,4,1,2]
    end
  end

  context "Max Heapifying" do
    it "heapifies an ordered array"

    it "heapifies an unordered array"
  end
end

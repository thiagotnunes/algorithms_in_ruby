require_relative '../heap/heap'

describe "Heap" do
  context "Max" do
    before(:each) do
      @heap = Heap.max_heap
    end

    context "Inserting" do
      it "should insert a new element in the first position when heap is empry" do
        @heap.insert(5)
        @heap.heap.should == [5]
      end

      it "should keep the heap structure when inserting new elements" do
        @heap.insert(5).insert(6).insert(1).insert(7).insert(4)
        @heap.heap.should == [7,6,1,5,4]
      end
    end
  end
end

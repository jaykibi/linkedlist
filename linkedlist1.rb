class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end 

class Stack
    attr_reader :data

    def initialize
        @data = nil
    end

    # Push a value onto the stack
    def push(value)
        # IMPLEMENT ME!
        # temp = LinkedListNode.new(value, @data) placeholder variable
        @data = LinkedListNode.new(value, @data)
        # data = nil
        # push(1) => LinkedListNode(1, nil)
        # push(2) => LinkedListNode(2, LinkedListNode(1, nil))
        # push(4) => LinkedListNode(4, LinkedListNode(2, LinkedListNode(1, nil)))
    end

    # Pop an item off the stack.
    # Remove the last item that was pushed onto the
    # stack and return the value to the user
    def pop
        # I RETURN A VALUE
        return print "nil\n" if @data.nil?
        print "#{@data.value}\n"
        @data = @data.next_node
        #LinkedListNode(4, LinkedListNode(2, LinkedListNode(1, nil)))
        #pop => "4" ; @data = LinkedListNode(2, LinkedListNode(1, nil))
        #pop => "2" ; @data = LinkedListNode(1,nil)
        #pop => "1" ; @data = nil
        #pop => "nil" ; @data = nil
        #pop => "nil" ; @data = nil
    end
end



def print_values(list_node)
  if list_node
    print "#{list_node.value} --> "
    print_values(list_node.next_node)
  else
    print "nil\n"
    return
  end
  # nothing to do
end
# LinkedListNode(12, LinkedListNode(99, LinkedListNode(37, nil)))
# print_values(LinkedListNode(12, LinkedListNode(99, LinkedListNode(37, nil))))
#   print "12 --> "; print_values(LinkedListNode(99, LinkedListNode(37, nil))))
#     print "99 --> "; print_values(LinkedListNode(37, nil)))
#       print "37 --> "; print_values(nil)
#         print "nil\n"; RETURN

def reverse_list(list)
    # ADD CODE HERE
    stack = Stack.new
    while list
        # ADD CODE HERE
        stack.push(list.value)
        # temp = list.next_node
        # list = temp
        list = list.next_node
    end

    # ADD CODE HERE
    return stack.data
end

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)

print_values(node3)

puts "-------"

revlist = reverse_list(node3)

print_values(revlist)
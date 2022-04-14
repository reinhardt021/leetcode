# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @return {Boolean}
def is_palindrome(head)
    if head.next == nil
        return true
    end
    values = buildValuesArray([], head)
    #puts "values: " + values.to_s
    midpoint = values.count/2
    front = values[0..(midpoint-1)]
    isOdd = values.count % 2 != 0 
    back = values[(isOdd ? midpoint+1 : midpoint)..(values.count-1)]
    puts front.to_s + " " + back.to_s
    
    return front == back.reverse!
end

def buildValuesArray(arr, node)
    curr_node = node
    while curr_node do
      arr.push(curr_node.val)
      curr_node = curr_node.next
    end
    
    return arr
end
#def buildValuesArray(arr, node)
    #arr.push(node.val)
    #if (node.next)
        #buildValuesArray(arr, node.next)
    #end
    
    #return arr
#end

class ListNode
    attr_accessor :val, :next
    def initialize(val = 0, _next = nil)
      @val = val
      @next = _next
    end
end

t1 = ListNode.new(1, nil) #[1]
t2 = ListNode.new(1, ListNode.new(2, t1)) #[121]
t3 = ListNode.new(4, ListNode.new(2, t1)) #[421]

t4 = ListNode.new(1, ListNode.new(2, ListNode.new(2, t1))) #[1221]
t5 = ListNode.new(1, ListNode.new(2, nil)) #[12]
def assertEquals(actual, expected)
  actual == expected ? 'T' : 'F'
end
#puts "pass:"+ assertEquals(is_palindrome(t1), true)
#puts "pass:"+ assertEquals(is_palindrome(t2), true)
#puts "pass:"+ assertEquals(is_palindrome(t3), false)
#puts "pass:"+ assertEquals(is_palindrome(t4), true)
#puts "pass:"+ assertEquals(is_palindrome(t5), false)
puts 5 /2 

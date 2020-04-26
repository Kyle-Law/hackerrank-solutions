# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @return {ListNode}
def middle_node(head)
    ar = [head]
    while ar[-1].next
        ar.push(ar[-1].next)
    end
    ar[(ar.size)/2]
end

# Key takeaways:
# Appending all nodes to an array, then white ar[-1] (last_node.next) exists, push it to the array. 
# Return the middle by ar.size/2. If there's 5 items, array.size => 5, 5/2 = 2 , the middle index. If there's 6 items, size = 6, /2 = 3, the forth item (second item of the middles)
# O(n) Time & Memory
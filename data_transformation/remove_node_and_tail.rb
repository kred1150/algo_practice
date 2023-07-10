# Given the head of a linked list, remove the nth node from the end of the list and return its head.
# Input: head = [1,2,3,4,5], n = 2
# Output: [1,2,3,5]

def remove_nth_from_end(head, n)
  head.delete_at(head.length - n)
  return head
end

p remove_nth_from_end([1, 2, 3, 4, 5], 2)

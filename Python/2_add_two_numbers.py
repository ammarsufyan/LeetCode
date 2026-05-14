# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, val=0, next=None):
#         self.val = val
#         self.next = next

# Linked list solution with dummy node
class Solution1:
    def addTwoNumbers(self, l1: Optional[ListNode], l2: Optional[ListNode]) -> Optional[ListNode]:
        # Dummy node as a placeholder to simplify the code 
        dummy = ListNode()
        current = dummy
        carry = 0

        while l1 or l2 or carry:
            # get the values of the current nodes of l1 and l2, if they exist, otherwise use 0
            val1 = l1.val if l1 else 0
            val2 = l2.val if l2 else 0

            # calculate the total sum of the current digits and the carry from the previous step, then update the carry for the next step
            total = val1 + val2 + carry
            carry = total // 10
            new_val = total % 10
            
            # create a new node with the calculated value and append it to the result list, then move the current pointer to the new node
            current.next = ListNode(new_val)
            current = current.next

            # move to the next nodes in the input lists if they exist
            l1 = l1.next if l1 else None
            l2 = l2.next if l2 else None

        return dummy.next
    
# Linked list solution without dummy node
class Solution2:
    def addTwoNumbers(self, l1: Optional[ListNode], l2: Optional[ListNode]) -> Optional[ListNode]:
        head = None
        current = None 
        carry = 0

        while l1 or l2 or carry:
            # get the values of the current nodes of l1 and l2, if they exist, otherwise use 0
            val1 = l1.val if l1 else 0
            val2 = l2.val if l2 else 0

            # calculate the total sum of the current digits and the carry from the previous step, then update the carry for the next step
            total = val1 + val2 + carry
            carry = total // 10
            new_val = total % 10

            # check if the head of the result list is None, if so, initialize it with the new value, otherwise append to the current node
            if head is None: 
                head = ListNode(new_val)
                current = head
            else:
                current.next = ListNode(new_val)
                current = current.next

            # move to the next nodes in the input lists if they exist
            l1 = l1.next if l1 else None
            l2 = l2.next if l2 else None
        
        return head
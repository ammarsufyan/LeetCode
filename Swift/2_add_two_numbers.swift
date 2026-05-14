/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
 
// Linked list solution with dummy node
class Solution1 {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        // Dummy node as a placeholder to simplify the code
        let dummy = ListNode()
        var current = dummy
        var carry = 0
        
        var p1 = l1
        var p2 = l2
        
        while p1 != nil || p2 != nil || carry != 0 {
            // get the values of the current nodes of l1 and l2, if they exist, otherwise use 0
            let val1 = p1?.val ?? 0
            let val2 = p2?.val ?? 0
            
            // calculate the total sum of the current digits and the carry from the previous step, then update the carry for the next step
            let total = val1 + val2 + carry
            carry = total / 10
            let newVal = total % 10
            
            // create a new node with the calculated value and append it to the result list, then move the current pointer to the new node
            let newNode = ListNode(newVal)
            current.next = newNode
            current = newNode
            
            // move to the next nodes in the input lists if they exist
            p1 = p1?.next
            p2 = p2?.next
        }
        
        return dummy.next
    }
}

// Linked list solution without dummy node
class Solution2 {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var head: ListNode? = nil
        var current: ListNode? = nil 
        var carry = 0

        var p1 = l1
        var p2 = l2

        while p1 != nil || p2 != nil || carry != 0 {
            // get the values of the current nodes of l1 and l2, if they exist, otherwise use 0
            let val1 = p1?.val ?? 0
            let val2 = p2?.val ?? 0

            // calculate the total sum of the current digits and the carry from the previous step, then update the carry for the next step
            let total = val1 + val2 + carry
            carry = total / 10
            let newVal = total % 10

            // check if the head of the result list is nil, if so, initialize it with the new value, otherwise append to the current node
            let newNode = ListNode(newVal)
            if head == nil { 
                head = newNode
                current = head
            } else {
                current?.next = newNode
                current = newNode
            }

            // move to the next nodes in the input lists if they exist
            p1 = p1?.next
            p2 = p2?.next
        }
        
        return head
    }
}
class Solution {
    func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
        var max_consecutive = 0
        var current = 0

        for i in nums {
            // If the current number is 1, increment the current count and update the maximum consecutive count
            if i == 1 {
                current += 1
                max_consecutive = max(max_consecutive, current)
            } else {
                current = 0
            }
        }

        return max_consecutive
    }
}
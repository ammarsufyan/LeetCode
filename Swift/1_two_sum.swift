// Brute Force Solution
class Solution1 {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        let n = nums.count

        // O(n^2) because we have two nested loops to check all pairs of numbers in the array
        for i in 0..<(n - 1) {
            for j in (i + 1)..<n {
                if nums[i] + nums[j] == target {
                    return [i, j]
                }
            }
        }

        return []
    }
}

// Hash Map Solution
class Solution2 {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        // val : index mapping to store the previously seen numbers and their indices
        var prevMap = [Int: Int]()

        // O(n) because we traverse the list of numbers once, and each lookup in the hash map is O(1)
        for (i, n) in nums.enumerated() {
            let diff = target - n
            if let index = prevMap[diff] {
                return [index, i]
            }
            prevMap[n] = i
        }

        return []
    }
}
class Solution1 {
    func smallerNumbersThanCurrent(_ nums: [Int]) -> [Int] {
        let n = nums.count
        var answer = [Int]()
        
        // For each number in the array, count how many numbers are smaller than it by comparing it with every other number.
        for i in 0..<n {
            var current = 0
            for j in 0..<n {
                if nums[j] < nums[i] {
                    current += 1
                }
            }
            answer.append(current)
        }
        
        return answer
    }
}

class Solution2 {
    func smallerNumbersThanCurrent(_ nums: [Int]) -> [Int] {
        let temp = nums.sorted()
        var mapping = [Int: Int]()
        
        // Save the index of the first occurrence of each number in the sorted array
        for (i, val) in temp.enumerated() {
            if mapping[val] == nil {
                mapping[val] = i
            }
        }
        
        // Map each number in the original array to its corresponding index in the sorted array
        return nums.map { mapping[$0] ?? 0 }
    }
}
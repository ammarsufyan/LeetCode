class Solution {
    func findErrorNums(_ nums: [Int]) -> [Int] {
        let n = nums.count
        var seen = Set<Int>()
        var duplicate = 0

        for i in nums {
            if seen.contains(i) {
                duplicate = i
            } else {
                seen.insert(i)
            }
        }

        let sumSeen = seen.reduce(0, +)
        let total = (n * (n + 1 )) / 2
        let missing = total - sumSeen

        return [duplicate, missing]
    }
}
class Solution {
    func findDisappearedNumbers(_ nums: [Int]) -> [Int] {
        let n = nums.count
        let set_nums = Set(nums)
        var answer = Array<Int>()

        for i in 1...n {
            if !set_nums.contains(i) {
                answer.append(i)
            }
        }

        return answer
    }
}
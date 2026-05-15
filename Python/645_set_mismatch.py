class Solution:
    def findErrorNums(self, nums: List[int]) -> List[int]:
        n = len(nums)
        seen = set()
        duplicate = 0

        for i in nums:
            if i in seen:
                duplicate = i
            else:
                seen.add(i)

        total = (n * (n + 1)) // 2
        missing = total - sum(seen)

        return [duplicate, missing]
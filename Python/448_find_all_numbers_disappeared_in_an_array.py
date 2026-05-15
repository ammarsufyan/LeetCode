class Solution:
    def findDisappearedNumbers(self, nums: List[int]) -> List[int]:
        n = len(nums)
        set_nums = set(nums)
        answer = []

        for i in range(1, n + 1):
            if i not in set_nums:
                answer.append(i)

        return answer
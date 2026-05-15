# O(n^2) solution
class Solution1:
    def smallerNumbersThanCurrent(self, nums: List[int]) -> List[int]:
        n = len(nums)
        answer = []

        # For each number in the array, count how many numbers are smaller than it by comparing it with every other number.
        for i in range(n):
            current = 0
            for j in range(n):
                if nums[j] < nums[i]:
                    current += 1

            answer.append(current)

        return answer

# O(n log n) solution
class Solution2:
    def smallerNumbersThanCurrent(self, nums: List[int]) -> List[int]:
        temp = sorted(nums)
        mapping = {}
        
        # Save the index of the first occurrence of each number in the sorted array
        for i, val in enumerate(temp):
            if val not in mapping:
                mapping[val] = i
                
        # Map each number in the original array to its corresponding index in the sorted array
        return [mapping[num] for num in nums]
# Check for all possible substring lengths and verify if repeating the substring forms the original string
class Solution1:
    def repeatedSubstringPattern(self, s: str) -> bool:
        n = len(s)

        # Check for all possible substring lengths from 1 to n//2
        for i in range(1, n // 2 + 1):
            # If the length of the string is divisible by the current substring length
            if n % i == 0:
                # Check if repeating the substring (s[:i]) the required number of times equals the original string
                if s[:i] * (n // i) == s:
                    return True

        return False
    
# Another approach using string concatenation to check for repeated substring pattern
class Solution2:
    def repeatedSubstringPattern(self, s: str) -> bool:
        return s in (s + s)[1:-1]
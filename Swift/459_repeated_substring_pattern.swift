// Check for all possible substring lengths and verify if repeating the substring forms the original string
class Solution1 {
    func repeatedSubstringPattern(_ s: String) -> Bool {
        let n = s.count
        guard n > 1 else { return false }

        // Check for all possible substring lengths from 1 to n/2
        for i in 1...(n / 2) {
            // If the length of the string is divisible by the current substring length
            if n % i == 0 {
                // Check if repeating the substring the required number of times equals the original string
                let prefix = String(s.prefix(i))
                let repeated = String(repeating: prefix, count: n / i)
                if repeated == s {
                    return true
                }
            }
        }
        return false
    }
}

// Another approach using string concatenation to check for repeated substring pattern
class Solution2 {
    func repeatedSubstringPattern(_ s: String) -> Bool {
        var ss = s + s
        ss.removeFirst()
        ss.removeLast()
        return ss.contains(s)
    }
}
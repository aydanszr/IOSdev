func reverseString(_ s: String) -> String {
        var chars = Array(s.characters)
        var start = 0
        var end = chars.count - 1
        
        while start < end {
            if chars[start] != chars[end] {
                swap(&chars[start], &chars[end])
            }
            start += 1
            end -= 1
        }
        
        return String(chars)
    }
print(reverseString(["h","e","l","l","o"]))

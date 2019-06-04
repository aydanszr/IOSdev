func strStr(_ haystack: String, _ needle: String) -> Int
{
    if needle == ""
    {
        return 0
    }
    
    let windowSize = needle.count
    var i = 0
    var j = windowSize - 1
    let charArray = Array(haystack)
    
    while j < charArray.count
    {
        let substring = String(charArray[i...j])
        if needle == substring
        {
            return i
        }
        else
        {
            i += 1
            j += 1
        }
    }
    
    return -1
}

print(strStr(haystack = "hello", needle = "ll"))

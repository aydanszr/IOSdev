func sortArrayByParity(_ A: [Int]) -> [Int] {
        var even = [Int]()
        var odd = [Int]()
        A.forEach {
            if $0 % 2 == 0 {
                even.append($0)
            } else {
                odd.append($0)
            }
        }
        return even + odd
    }

print(sortArrayByParity([3,1,2,4]))
print(sortArrayByParity([6,7,5,1]))
      

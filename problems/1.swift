func sortedSquares(_ A: [Int]) -> [Int] {
        var num: Array<Int> = []
        for i in A{
            num.append(i * i)
        }
        let arr = num.sorted()
        return arr
}

print(sortedSquares([-4,-1,0,3,10]))
print(sortedSquares([-7,-3,2,3,11]))

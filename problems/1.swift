class Solution {
    func sortedSquares(_ A: [Int]) -> [Int] {
        var num: Array<int> = []
        for i in A{
            num.append(i * i)
        }
        var arr = num.sorted()
        return arr
}

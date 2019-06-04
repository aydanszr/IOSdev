func flipAndInvertImage(_ A: [[Int]]) -> [[Int]] {
    var result : [[Int]] = A
        for i in 0..<A.count {
            for j in 0..<A[i].count {
                result[i][j] = result[i][j] == 0 ? 1 : 0
            }
        }
        
        for i in 0..<A.count {
            let ar = result[i]
            for j in 0..<ar.count{
                let k = ar[ar.count - j - 1]
                result[i][j] = k
            }
        }
        return result
    }

print(flipAndInvertImage([[1,1,0],[1,0,1],[0,0,0]]))
print(flipAndInvertImage([[1,1,0,0],[1,0,0,1],[0,1,1,1],[1,0,1,0]]))

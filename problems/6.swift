func moveZeroes(_ nums: [Int]) {
    var left = 0
    var right = 0
    
        while left < nums.count && nums[left] != 0 {
            left += 1
        }
        right = left + 1
        
        while right < nums.count{
            while right < nums.count &&  nums[right] == 0 {
                right += 1
            }
            
            if right < nums.count{
                let temp = nums[left]
                nums[left] = nums[right]
                nums[right] = temp
            }
            left += 1
        }
    }

print(moveZeroes([0,1,0,3,12]))
print(moveZeroes([1,2,3,0,7,0,0,8]))

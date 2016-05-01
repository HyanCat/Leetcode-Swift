//: Playground - noun: a place where people can play

import Foundation

class Solution
{
    func singleNumber(nums: [Int]) -> [Int] {
        var xor = 0
        for num in nums {
            xor ^= num
        }
        // 找出一个不同的位
        xor = (xor & (xor-1)) ^ xor
        var a = 0, b = 0
        for num in nums {
            // 分流
            if xor & num == 0 {
                a ^= num
            }
            else {
                b ^= num
            }
        }
        return [a, b]
    }
}

Solution().singleNumber([1,2,3,2,5,4,6,6,1,4])

//: Playground - noun: a place where people can play

import Foundation

class Solution
{
    func singleNumber(nums: [Int]) -> Int
    {
        var result = 0
        for num in nums {
            result = result ^ num
        }
        return result
    }
}

Solution().singleNumber([1,2,3,3,2,5,1])

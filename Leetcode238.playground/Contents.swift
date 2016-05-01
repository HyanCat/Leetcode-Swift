//: Playground - noun: a place where people can play

import Foundation

class Solution
{
    func productExceptSelf(nums: [Int]) -> [Int] {
        var result = [1]
        var temp = 1
        let length = nums.count
        for (index, num) in nums.enumerate() {
            if index == length-1 {
                break
            }
            temp *= num
            result.append(temp)
        }
        temp = 1

        for (index, num) in nums.reverse().enumerate() {
            result[length-index-1] *= temp
            temp *= num
        }
        // [a,b,c,d,e] => [x,y,z,r,w]
        //          a      a*b  a*b*c  a*b*c*d
        // e*d*c*b  e*d*c  e*d  e
        // X        Y      Z    R      W
        return result
    }
}

Solution().productExceptSelf([2,3,4,5,6])

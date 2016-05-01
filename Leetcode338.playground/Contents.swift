//: Playground - noun: a place where people can play

import Foundation

class Solution {
    func countBits(num: Int) -> [Int] {
        var result:[Int] = [0]
        if num == 0 {
            return result
        }
        for i in 1...num {
            if i & 1 == 1 {
                result.append(result[i-1] + 1)
            }
            else {
                result.append(result[i>>1])
            }
        }
        return result
    }
}

Solution().countBits(10);

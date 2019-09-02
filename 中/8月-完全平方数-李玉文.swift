
//用一个数组来记录已有的结果，初始化为正无穷，外层循环变量i从0到n，内层循环变量j在i的基础上依次加上每个数的平方，那么i + j * j 这个数需要的最少的完全平方数的数量就是数组中当前的数值和i位置的数组+1这两者中的较小值


class Solution {
    func numSquares(_ n: Int) -> Int {
        var result = [Int].init(repeating: Int.max, count: n + 1)
        result[0] = 0
        var i = 0, j = 1
        while i <= n {
            while i + j * j <= n {
                result[i + j * j] = min(result[i + j * j], result[i] + 1)
                j += 1
            }
            i += 1
            j = 1
        }
        return result[n]
    }
}

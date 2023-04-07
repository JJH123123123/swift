#! /usr/bin/env xcrun swift 
var inputs = readLine()!.split(separator : " ").map{Int(String($0))!}
// print(type(of:inputs))

let n : Int = inputs[0]
let m : Int = inputs[1]
var nums = [Int](repeating:0, count: n+1)

var items = readLine()!.split(separator : " ").map{Int(String($0))!}
// size m 
// print(nums.count)
var res = 0
for i in 0...m-1{ // 0<=m

    // print("i", i, separator: " ")
    var flag : Bool = false;
    
    for j in stride(from:0, to : n, by : 1){
        // print(j)
        if(nums[j]==0){
            nums[j] = items[i]
            flag = true
            break
        }
        if(nums[j] == items[i]){
            flag = true
            break
        }
    }
    if(flag) {continue}

    var M = -1
    var idx = 0
    for l in stride(from:0, to : n, by : 1){
        var cnt = 0
        for k in stride(from:i+1, to : m, by : 1){
            if(nums[l] == items[k]){
                break
            }
            cnt = cnt + 1
        }
        if(M < cnt){
            idx = l
            M = cnt
        }
    }
    nums[idx] = items[i]
    res = res + 1 
}
print(res)
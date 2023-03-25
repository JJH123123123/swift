#! /usr/bin/env xcrun swift

let nums = readLine()!.split(separator:  " ").map{
    Int(String($0))!
}
// print(type(of:nums))
let n = nums[0]
let m = nums[1]

var a : Array<Int> = Array()

for i in 0...n{
    a.append(i)
}


for _ in 1...m{
    let tmp = readLine()!.split(separator: " ").map{
        Int(String($0))!
    }
    // print(tmp.)
    let s = tmp[0]
    let e = tmp[1]
    let mid = tmp[2]
    // print(s, e, mid)
    if(mid==s ){
        continue
    }
    var st: Array<Int> = Array()

    for l in mid...e{
        st.append(a[l])
    }

    for k in s...mid-1{
        st.append(a[k])
    }
    for i in s...e{
        a[i] = st[i-s]
    }
}

for i in 1 ... n{
    print(a[i], terminator: " ")
}


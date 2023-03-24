#!/usr/bin/env xcrun swift
var name = "int"
var step = "long"
let n = Int(readLine()!)!
let end = n / 4
for _ in 1...end{
    print(step, terminator: " ")  
}
print(name)


// st = [] 
// st.sort()

// 1-----3
//    2 ---- 5 
//       3---5
//               6--7

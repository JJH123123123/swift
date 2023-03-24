#!/usr/bin/env xcrun swift
var str = readLine()!
var idx = Int(readLine()!)!
// print(idx)
print(str[str.index(str.startIndex, offsetBy : idx-1)])

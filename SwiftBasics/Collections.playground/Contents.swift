import UIKit

//Arrays

var arr1 = [1,2,3,4,5]
arr1.append(6)
var rev_arr1 = Array(arr1.reversed())
print(arr1)
print(rev_arr1)

//print(arr1[6])s


var arr2 = ["ABC", "DEF", "GHI"]
var rev_arr2 = Array(arr2.reversed())

arr2.reverse()

print(arr2)
print(rev_arr2)

//var arr3 = [1, "Two", 3.4, true]
//print(arr3)


// Dictionaries

["key1", "key2", "key3"]
var dict1 = ["key1": "value1", "key2": "value2"]
dict1["key3"] = "value3"
dict1["key1"] = "value1_new"
print(dict1)


var dict2 = ["One": 1]
print(dict2)

//var dict3 = [1: "One", "Two": 2]
//print(dict3)


// Tuple

var t1 = (1,2,3,4)
print(t1.1)

var t2 = (1, 2.3, "four", true)

t2.0 = 10

print(t2)

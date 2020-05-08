import UIKit

func my_function() {
    print("this is my function")
}

my_function()

func function_with_param(a: Int) {
    print("a: \(a)")
}

function_with_param(a: 10)

func function_with_params(a: Int, b: Int, c: String) {
    print("a: \(a)")
    print("b: \(b)")
    print("c: \(c)")
}

function_with_params(a: 10, b: 20, c: "Codekul")

func function_with_defalut(a: Int = 10) {
    print("a: \(a)")
}

function_with_defalut()
function_with_defalut(a: 20)

func function_lable(lable1 a: Int, lable2 b: Int) {
    print("Lable1: \(a)")
    print("Lable2: \(b)")
}

function_lable(lable1: 10, lable2: 20)

func function_inout_param(a: inout String) {
    a += "++"
}

var str = "C"
function_inout_param(a: &str)
print(str)

func function_hiding_param_name(_ a: String) {
    print(a)
}

function_hiding_param_name("My_Param")

func function_returning() -> Double {
    var marks = 98.18
    return marks
}

var a = function_returning()
print(a)

func get_percentage(marks: Int) -> Double {
    var per = Double(marks)/9.0
    return per
}

print(get_percentage(marks: 760))

func return_array() -> [Int] {
    return [1,2,3,4,5,6]
}
print(return_array())


func return_tuple() -> (Int, Int, Int, Int) {
    return (1,2,3,4)
}

print(return_tuple())

func variadic_param(a: Int...) {
    print(a)
}

variadic_param(a: 1,2,3,4,5,6, 8, 9, 10)

let my_func = { () -> String in
    print("This is my_func")
    return "Codekul"
}

var new_func = my_func
new_func()

func function_as_param(my_func: (Int) -> String) {
    print("This is fuction_as_param")
    print(my_func(10))
}

function_as_param { (a) -> String in
    print("a: \(a)")
    return "ABCD"
}

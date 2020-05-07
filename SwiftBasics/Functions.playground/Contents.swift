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

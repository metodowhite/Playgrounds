// Playground - noun: a place where people can play

import UIKit

var blas1 = [String](count: 7, repeatedValue: "Bla1")
var blas2 = [String](count: 7, repeatedValue: "Bla2")
var blas3 = [String](count: 7, repeatedValue: "Bla3")

var blas = blas1 + blas2 + blas3

var blaSet = NSSet(array: blas) //http://stackoverflow.com/a/24579790/955845
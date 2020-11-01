//
//  Operator.swift
//  Calculator for IOS
//
//  Created by njuios on 2020/10/25.
//

import Foundation
enum Number:Int{
    case e=1,dot,zero,one,two,three,four,five,six,seven,eight,nine,pi
}
enum Unary:Int{
    case neg=1,ln,sqr,sqrt,sqr_3,log,sin,cos,tan
}
enum Binary:Int{
    case mul=1,sub,add,div,mod,sqr_y,sqrt_y
}
enum Function:Int{
    case eq=1
}

//
//  Operator.swift
//  Calculator for IOS
//
//  Created by njuios on 2020/10/25.
//

import Foundation
enum Operator{
    enum Number{
        case dot,zero,one,two,three,four,five,six,seven,eight,nine
    }
    enum Unary{
        case neg,ln,sqr,sqrt,sqrt_y,sqr_3,sqr_y,e,log,sin,cos,tan
    }
    enum Binary{
        case mul,sub,add,div,mod
    }
    enum Function{
        case eq
    }
}

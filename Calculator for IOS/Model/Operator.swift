//
//  Operator.swift
//  Calculator for IOS
//
//  Created by njuios on 2020/10/25.
//

import Foundation
enum Operator{
    enum Number:Int{
        case e,dot,zero,one,two,three,four,five,six,seven,eight,nine
    }
    enum Unary:Int{
        case neg,ln,sqr,sqrt,sqrt_y,sqr_3,log,sin,cos,tan
    }
    enum Binary:Int{
        case mul,sub,add,div,mod,sqr_y
    }
    enum Function:Int{
        case eq
    }
}

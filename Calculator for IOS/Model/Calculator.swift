//
//  Calculator.swift
//  Calculator for IOS
//
//  Created by njuios on 2020/10/25.
//

import Foundation
class Calculator{
    var num : Double
    var last_num : Double
    var has_dot : Bool
    
    var neg : Bool
    var pi : Double
    var e : Double
    init() {
        self.num = 0
        self.last_num = 0
        self.has_dot = false
        self.neg = false
        self.pi = 3.1415926
        self.e = 2.71828
    }
    func clear(){
        self.num = 0
        self.last_num = 0
        self.has_dot = false
        self.neg = false
    }
    func HandleNum(_ num:Number)->Double{
        switch num {
        case .e:
            self.last_num = self.num
            self.num = self.e
        case .pi:
            self.last_num = self.num
            self.num = self.pi
        case .one:
            self.num = self.num * 10 + 1
        case .two:
            self.num = self.num * 10 + 2
        case .three:
            self.num = self.num * 10 + 3
        case .four:
            self.num = self.num * 10 + 4
        case .five:
            self.num = self.num * 10 + 5
        case .six:
            self.num = self.num * 10 + 6
        case .seven:
            self.num = self.num * 10 + 7
        case .eight:
            self.num = self.num * 10 + 8
        case .nine:
            self.num = self.num * 10 + 9
        case .zero:
            self.num = self.num * 10
        case .dot:
            self.has_dot = true
        }
        
        return self.num
    }
    func HandleUnaryOp(_ op:Unary){
        switch op{
        case .neg:
            self.num = -self.num
        case .ln:
            self.num = log(self.num)
        case .sqr:
            self.num = self.num * self.num
        case .sqr_3:
            self.num = pow(self.num,3)
        case .sqrt:
            self.num = pow(self.num,1/2)
        case .sin:
            self.num = sin(self.num)
        case .cos:
            self.num = cos(self.num)
        case .tan:
            self.num = tan(self.num)
        case .log:
            self.num = log(self.num)
        }
    }
    func HandleBinaryOp(_ op: Binary){
        switch op {
        case .mul:
            self.num *= self.last_num
            self.last_num = self.num
        case .sub:
            self.num = self.last_num - self.num
            self.last_num = self.num
        case .add:
            self.num += self.last_num
            self.last_num = self.num
        case .div:
            self.num = self.last_num / self.num
            self.last_num = self.num
        case .mod:
            self.num = self.last_num
            self.last_num = self.num
        case .sqr_y:
            self.num = pow(self.last_num, self.num)
            self.last_num = self.num
        case .sqrt_y:
            self.num = pow(self.last_num, 1/self.num)
            self.last_num = self.num
        }
        
    }
    
    func HandleFunctionnalOp(_ op: Function)->String{
        switch op {
        case .eq:
            return String(self.num)
        default:
            return "ERROR"
        }
    }
}

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
    var has_dot : Double
    
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
    func calculate(_ op:Operator){
        
    }
    func HandleNum(_ num:Operator.Number){
        switch num {
        case .e:
            self.last_num = self.num
            self.num = self.e
        case .pi:
            self.last_num = self.num
            self.num = self.e
        case .one,.two,.three,.four,.five,.six,.seven,.eight,.nine,.zero:
            self.num = self.num * 10 + (num - Operator.Number.zero)
            
        }
    }
    func HandleUnaryOp(_ op:Operator.Unary){
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
        }
    }
    func HandleBinaryOp(_ op: Operator.Binary){
        switch op {
        case .mul:
            self.num *= self.last_num
        case .sub:
            self.num = self.last_num - self.num
        case .add:
            self.num += self.last_num
        case .div:
            self.num = self.last_num / self.num
        case .mod:
            self.num = self.last_num % self.num
            
        }
    }
    
    func HandleFunctionnalOp(_ op: Operator.Function){
        switch op {
        case .eq:
            return self.num
        default:
            return "ERROR"
        }
    }
}

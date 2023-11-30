//
//  main.swift
//  SpartaCalculatorProject
//
//  Created by 영현 on 11/30/23.
//

import Foundation

class Calculator {
    func calculate(_ inputOperator: String, _ firstNumber: Double, _ secondNumber: Double) -> Double {
    
        if inputOperator == "+" {
            return firstNumber + secondNumber
        } else if inputOperator == "-" {
            return firstNumber - secondNumber
        } else if inputOperator == "*" {
            return firstNumber * secondNumber
        } else if inputOperator == "/" {
            return firstNumber / secondNumber
        } else if inputOperator == "%" {
            return firstNumber.truncatingRemainder(dividingBy: secondNumber)
        } else {
            print("적절하지 않은 연산자 입력입니다.")
            return 0 }
    }
}

func main() -> Double {
    print("사칙연산자 중 하나를 사용한 사칙연산 식을 입력하세요. 단 숫자와 연산기호는 공백으로 구분되어야 합니다.")
    
    let input = readLine()
    var x = 0.0, y = 0.0, op = ""
    
    if let input = input {
        let inputs = input.components(separatedBy: " ")
//        print(inputs)
        
        guard !inputs[0].isEmpty else {
            print("입력 값이 없습니다. 다시 시도해주세요.")
            return 0
        }
        x = Double(inputs[0])!
        op = inputs[1]
        y = Double(inputs[2])!
    }
    
    let calc = Calculator()
    let result = calc.calculate(op, x, y)
    
    print(result)
    
    return result
}

main()

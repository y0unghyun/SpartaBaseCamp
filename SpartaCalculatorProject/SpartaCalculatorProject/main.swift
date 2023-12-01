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
            let op = AddOperation()
            return op.operate(firstNumber, secondNumber)
        } else if inputOperator == "-" {
            let op = SubstractOperation()
            return op.operate(firstNumber, secondNumber)
        } else if inputOperator == "*" {
            let op = MultiplyOperation()
            return op.operate(firstNumber, secondNumber)
        } else if inputOperator == "/" {
            let op = DivideOperation()
            return op.operate(firstNumber, secondNumber)
        } else if inputOperator == "%" {
            return firstNumber.truncatingRemainder(dividingBy: secondNumber)
        } else {
            print("적절하지 않은 연산자 입력입니다.")
            return 0 }
    }
}

class AddOperation {
    func operate(_ firstNumber: Double, _ secondNumber: Double) -> Double {
        return firstNumber + secondNumber
    }
}

class SubstractOperation {
    func operate(_ firstNumber: Double, _ secondNumber: Double) -> Double {
        return firstNumber - secondNumber
    }
}

class MultiplyOperation {
    func operate(_ firstNumber: Double, _ secondNumber: Double) -> Double {
        return firstNumber * secondNumber
    }
}

class DivideOperation {
    func operate(_ firstNumber: Double, _ secondNumber: Double) -> Double {
        if secondNumber == 0 {
            print("0으로는 나눌 수 없습니다!")
            return 0
        } else {
            return firstNumber / secondNumber
        }
    }
}


func main() -> Double {
    print("사칙연산자 중 하나를 사용한 사칙연산 식을 입력하세요. 단 숫자와 연산기호는 공백으로 구분되어야 합니다.")
    
    let input = readLine()
    var x = 0.0, y = 0.0, op = ""
    
    if let input = input {
        let inputs = input.components(separatedBy: " ")
        
        guard !inputs[0].isEmpty else {
            print("입력 값이 없습니다. 다시 시도해주세요.")
            return 0
        }
        x = Double(inputs[0])!
        op = inputs[1]
        y = Double(inputs[2])!
    } // 입력으로 받은 "(정수) (연산자) (정수)" 형태의 문자열에서 각각을 추출해서 미리 선언해두었던 변수에 대입
    
    let calc = Calculator() // Calculator 객체 생성
    
    let result = calc.calculate(op, x, y) // result 변수에 Calculate 클래스 내부의 calculate 함수 실행 결과를 저장
    
    print(result) // 결과 출력
    
//    print("방금 계산한 값에 추가적으로 연산을 진행하시겠습니까?") ** 미구현기능
    
    return result
}


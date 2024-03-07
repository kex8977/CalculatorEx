import UIKit

class Another_Calculator {
   
   enum OperateOfSymbol {
      case add
      case subtract
      case multiply
      case divide
      case reminder
   }
   var operate : OperateOfSymbol
   var value1 : Int
   var value2 : Int
   
   init(operate: OperateOfSymbol, value1: Int, value2: Int){
      self.operate = operate
      self.value1 = value1
      self.value2 = value2
   }
   
   func Go_Calculate(_ Oper :OperateOfSymbol, _ value1: Int, _ value2: Int) -> Int {
      
      switch Oper {
      case .add:
         return value1 + value2
         
      case .subtract:
         return value1 - value2
         
      case .multiply:
         return value1 * value2
         
      case .divide:
         return value1 / value2
         
      default:
         return 0
      }
   }
}

let addResult = Another_Calculator(operate: .add, value1: 100, value2: 50)
let subtractResult = Another_Calculator(operate: .subtract, value1: 100, value2: 50)
let multiplyResult = Another_Calculator(operate: .multiply, value1: 100, value2: 50)
let divideResult = Another_Calculator(operate: .divide, value1: 100, value2: 50)

print("addResult :  \(addResult)")
print("subtractResult :  \(subtractResult)")
print("multiplyResult : \(multiplyResult)")
print("divideResult : \(divideResult)")            // level 1


class Another_Calculator2 : Another_Calculator {
   override func Go_Calculate(_ Oper: Another_Calculator.OperateOfSymbol, _ value1: Int, _ value2: Int) -> Int {
      switch Oper {
      case .add:
         return value1 + value2
         
      case .subtract:
         return value1 - value2
         
      case .multiply:
         return value1 * value2
         
      case .divide:
         return value1 / value2
         
      case .reminder:
         return value1 - (value1 / value2)
         
      default:
         return 0
      }
   }
}

let reminderResult = Another_Calculator2(operate: .reminder, value1: 5, value2:3)
print("reminder: \(reminderResult)")

// level 3

// level 2와 비교하여 좋아진 점
// 1. 하나의 클래스 당 한가지 일만 할 수 있다.
// 2. 그러나 한가지 일만 하는 것은 메서드에서 할일이 아닌가? 메서드 구현 부분은 ver1에 만들어두었다. 두 코드를 비교해보자
class AddOperation : Another_Calculator {
   override func Go_Calculate(_ Oper: Another_Calculator.OperateOfSymbol, _ value1: Int, _ value2: Int) -> Int {
      return value1 + value2
   }
}
class SubtractOperation : Another_Calculator {
   override func Go_Calculate(_ Oper: Another_Calculator.OperateOfSymbol, _ value1: Int, _ value2: Int) -> Int {
      return value1 - value2
   }
}
class MultiplyOperation : Another_Calculator {
   override func Go_Calculate(_ Oper: Another_Calculator.OperateOfSymbol, _ value1: Int, _ value2: Int) -> Int {
      return value1 * value2
   }
}
class DivideOperation : Another_Calculator {
   override func Go_Calculate(_ Oper: Another_Calculator.OperateOfSymbol, _ value1: Int, _ value2: Int) -> Int {
      return value1 / value2
   }
}

let cal3 = Another_Calculator(operate: .add, value1: 100, value2: 50)

let addResult3 = AddOperation(operate: .add, value1: 100, value2: 2)         // level3 연산
let subtractResult3 = SubtractOperation(operate: .subtract, value1: 100, value2: 2)
let multiplyResult3 = MultiplyOperation(operate: .multiply, value1: 100, value2: 2)
let divideResult3 = DivideOperation(operate: .divide, value1: 100, value2: 2)
print("\naddResult :  \(addResult3)")
print("subtractResult :  \(subtractResult3)")
print("multiplyResult : \(multiplyResult3)")
print("divideResult : \(divideResult3)")



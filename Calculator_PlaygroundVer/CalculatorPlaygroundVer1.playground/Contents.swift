import UIKit

// CalculatorPlaygroundVer1 은 비교적 내가 만들고 싶은대로 만들어본 부분

class Calculator{  // level 1 Calculator 클래스 구현
   var value1 : Double?  // 옵셔널 더블 형태의 두가지 프로퍼티 선언
   var value2 : Double?
   
//   init(value1: Double, value2:Double){ // 외부에서 넘겨받은 파라미터들을 프로퍼티의 값으로 쓰고자 할 때 사용
//      self.value1 = value1
//      self.value2 = value2
//   }
   
   func AddOperation(value1 : Int, value2 : Int) -> Int{
      return value1 + value2
   }
   
   func SubstractOperation(value1 : Int, value2 : Int) -> Int{
      return value1 - value2
   }
   
   func MultiplyOperation(value1 : Int, value2 : Int) -> Int{
      return value1 * value2
   }
   
   func DivideOperation(value1 : Int, value2 : Int) -> Int{
      return value1 / value2
   }
}

class Advanced_Calculator1: Calculator { // 기존의 Calculator를 상속받아 개선된 Advanced_Calculator 자식 클래스 생성
   
   func ReminderOperation(value1 : Int, value2 : Int) -> Int { // level2 나머지 연산 기능 구현
      var n = value1 / value2
      return value1 - (n * value2)
   }
   
//   override func AddOperation(value1: Int, value2: Int) -> Int {
//      return value1 + value2
//   }
   
   func AddOperation(value1: Double, value2: Double) -> Double {
      return value1 + value2
      // 파라미터의 자료형이 다르면 아예 다른 메서드로 인식하여
      // 메서드 overriding 불가함
   }
   func SubstractOperation(value1 : Double, value2 : Double) -> Double{
      return value1 - value2
   }
   
   func MultiplyOperation(value1 : Double, value2 : Double) -> Double{
      return value1 * value2
   }
   
   func DivideOperation(value1 : Double, value2 : Double) -> Double{
      return value1 / value2
   }
}

let cal1 = Calculator()
let cal2 = Advanced_Calculator1()

print(cal1.AddOperation(value1: 10, value2: 2))       // level1 사칙 연산 실행
print(cal1.SubstractOperation(value1: 10, value2: 2))
print(cal1.MultiplyOperation(value1: 10, value2: 2))
print(cal1.DivideOperation(value1: 10, value2: 2))
print("")

print(cal2.ReminderOperation(value1: 10, value2: 3))   // level2 나머지 연산
print(cal2.ReminderOperation(value1: 20, value2: 7))

//
//  ViewController.swift
//  Calculator
//
//  Created by 김광민 on 2024/03/06.

import UIKit

class Calculator{
   var value1 : Int?
   var value2 : Int?
//
//   init(value1: Int, value2:Int){
//      self.value1 = value1
//      self.value2 = value2
//   }
//
//   func AddOperation(value1 : Double, value2 : Double) -> Double{
//      return value1 + value2
//   }
//
//   func SubstractOperation(value1 : Double, value2 : Double) -> Double{
//      return value1 - value2
//   }
//
//   func MultiplyOperation(value1 : Double, value2 : Double) -> Double{
//      return value1 * value2
//   }
//
//   func DivideOperation(value1 : Double, value2 : Double) -> Double{
//      return value1 / value2
//   }
   
}

class ViewController: UIViewController {
   
   
   @IBOutlet weak var historyBox: UITextField!
   @IBOutlet weak var inputBox: UITextField!
   @IBOutlet weak var showOperator: UILabel!
   @IBOutlet weak var showResult: UITextView!
   
   enum operatorOfSymbol { // 실행할 연산 목록 enum 정의
      case add
      case substract
      case multiply
      case divide
      case blank
   }
   
   var operatorNow : operatorOfSymbol = operatorOfSymbol.blank // 실행할 연산이 무엇이냐
   
   override func viewDidLoad() {
      super.viewDidLoad()
      // Do any additional setup after loading the view.
   }
   
   @IBAction func btnEXECUTE(_ sender: UIBarButtonItem) {
//
//      if let str1 = historyBox.text {
//
//
//      }
      let n1 = Float(historyBox.text!)
      let n2 = Float(inputBox.text!)
      
      switch operatorNow {
         
      case .add:
         let n3 : Float = n1! + n2!
         showResult.text = String(n3)

      case .substract:
         let n3 : Float = n1! - n2!
         showResult.text = String(n3)
         
      case .multiply:
         let n3 : Float = n1! * n2!
         showResult.text = String(n3)
         
      case .divide:
         let n3 : Float = n1! / n2!
         showResult.text = String(n3)
         
      default:
         showResult.text = ""
      }
   }
   
   @IBAction func btnClearAll(_ sender: UIBarButtonItem) {
      showResult.text = ""
      historyBox.text = ""
      inputBox.text = ""
   }
   
   @IBAction func btnZero(_ sender: UIBarButtonItem) {
      let current = inputBox.text
      inputBox.text = current! + "0"
   }
   
   @IBAction func btnOne(_ sender: UIBarButtonItem) {
      let current = inputBox.text
      inputBox.text = current! + "1"
   }
   
   @IBAction func btnTwo(_ sender: UIBarButtonItem) {
      let current = inputBox.text
      inputBox.text = current! + "2"
   }
   
   @IBAction func btnThree(_ sender: UIBarButtonItem) {
      let current = inputBox.text
      inputBox.text = current! + "3"
   }
   
   @IBAction func btnFour(_ sender: UIBarButtonItem) {
      let current = inputBox.text
      inputBox.text = current! + "4"
   }
   
   @IBAction func btnFive(_ sender: UIBarButtonItem) {
      let current = inputBox.text
      inputBox.text = current! + "5"
   }
   
   @IBAction func btnSix(_ sender: UIBarButtonItem) {
      let current = inputBox.text
      inputBox.text = current! + "6"
   }
   
   @IBAction func btnSeven(_ sender: UIBarButtonItem) {
      let current = inputBox.text
      inputBox.text = current! + "7"
   }
   
   @IBAction func btnEight(_ sender: UIBarButtonItem) {
      let current = inputBox.text
      inputBox.text = current! + "8"
   }
   
   @IBAction func btnNine(_ sender: UIBarButtonItem) {
      let current = inputBox.text
      inputBox.text = current! + "9"
   }
   
   @IBAction func btnMultiple(_ sender: UIBarButtonItem) {
      historyBox.text = inputBox.text!
      inputBox.text = ""
      
      operatorNow = operatorOfSymbol.multiply
      showOperator.text = "x"
   }
   
   @IBAction func btnSubstract(_ sender: UIBarButtonItem) {
      historyBox.text = inputBox.text!
      inputBox.text = ""
      
      operatorNow = operatorOfSymbol.substract
      showOperator.text = "-"
   }
   
   @IBAction func btnAdd(_ sender: UIBarButtonItem) {
      
      historyBox.text = inputBox.text!
      inputBox.text = ""
      
      operatorNow = operatorOfSymbol.add
      showOperator.text = "+"
   }
   
   @IBAction func btnDivide(_ sender: UIBarButtonItem) {
      historyBox.text = inputBox.text!
      inputBox.text = ""
      
      operatorNow = operatorOfSymbol.divide
      showOperator.text = "/"
   }
}

//
//  StringCalculator.swift
//  StringCalculatorKata
//
//  Created by Gregory McQuillan on 1/5/15.
//  Copyright (c) 2015 onebigfunction. All rights reserved.
//

import UIKit

class StringCalculator: NSObject {
  
  let DEFAULT_DELIMETER: String = ",\n"
  
  override init() {
    println("New StringCalculator")
  }
  
  func add(var numberString: String) -> Int {
    let inputLength: Int = countElements(numberString)
    let delimeterInfo = parseDelimeterLine(numberString)
    numberString = delimeterInfo.numberExpression
    let delimeters = delimeterInfo.delimeter
    
    if (inputLength == 1) {
      return numberString.toInt()!
    }
    else if (inputLength > 1) {
      let numberArray = numberString.componentsSeparatedByCharactersInSet(
        NSCharacterSet(charactersInString: delimeters)
      )
      
      var sum = 0
      for (var i = 0; i < numberArray.count; i++) {
        sum += numberArray[i].toInt()!
      }
    
      return sum
    }
    
    return 0
  }
  
  private func parseDelimeterLine(var numberString: NSString)
    -> (delimeter: String, numberExpression: String) {
      
    if (numberString.length >= 4) {
      let delimeterIndex = 2;
      let endLine: unichar = "\n".characterAtIndex(0)
      
      if (numberString.characterAtIndex(3) == endLine
        && numberString.substringToIndex(delimeterIndex) == "//"
        && numberString.containsString("\n")) {
          
          let delimeterChar: String =  NSString(
            format: "%c",
            numberString.characterAtIndex(delimeterIndex)
          )
          let endlineIndex = numberString.rangeOfString("\n")
          let expressionArray = numberString.componentsSeparatedByString("\n")
          let numberExpression: String = String(expressionArray[1] as NSString)
          
          return (delimeterChar, numberExpression)
      }
    }
    
    return (DEFAULT_DELIMETER, numberString)
  }
}

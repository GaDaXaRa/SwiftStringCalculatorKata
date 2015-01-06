//
//  StringCalculator.swift
//  StringCalculatorKata
//
//  Created by Gregory McQuillan on 1/5/15.
//  Copyright (c) 2015 onebigfunction. All rights reserved.
//

import UIKit

class StringCalculator: NSObject {
  
  override init() {
    println("New StringCalculator")
  }
  
  func add(var numberString: String) -> Int {
    let inputLength: Int = countElements(numberString)
    
    if (inputLength == 1) {
      return numberString.toInt()!
    }
    else if (inputLength > 1) {
      let numberArray = numberString.componentsSeparatedByCharactersInSet(NSCharacterSet(charactersInString: ",\n"))
      var sum = 0
      for (var i = 0; i < numberArray.count; i++) {
        sum += numberArray[i].toInt()!
      }
    
      return sum
    }
    
    return 0
  }
}

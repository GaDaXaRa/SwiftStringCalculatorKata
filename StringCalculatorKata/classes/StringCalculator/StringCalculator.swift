//
//  StringCalculator.swift
//  StringCalculatorKata
//
//  Created by Gregory McQuillan on 1/5/15.
//  Copyright (c) 2015 onebigfunction. All rights reserved.
//

import UIKit

class StringCalculator: NSObject {
  func add(var numberString: String) -> Int {
    let inputLength: Int = countElements(numberString)
    
    if (inputLength == 1) {
      return numberString.toInt()!
    }
    else if (inputLength == 3) {
      let numberArray = numberString.componentsSeparatedByString(",")
      let twoNumberSum: Int = numberArray[0].toInt()! + numberArray[1].toInt()!
      
      return twoNumberSum
    }
    
    return 0
  }
}

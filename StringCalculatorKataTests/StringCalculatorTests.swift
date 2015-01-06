//
//  StringCalculatorTests.swift
//  StringCalculatorKata
//
//  Created by Gregory McQuillan on 1/5/15.
//  Copyright (c) 2015 onebigfunction. All rights reserved.
//

import UIKit
import XCTest

class StringCalculatorTests: XCTestCase {

  override func setUp() {
    super.setUp()
    // Put setup code here. This method is called before the invocation of each test method in the class.
  }
  
  override func tearDown() {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    super.tearDown()
  }

  
  func testEmptyStringReturnsZero() {
    var stringCalculator = StringCalculator()
    XCTAssertEqual(0, stringCalculator.add(""))
  }
  
  func testOneNumberZeroReturnsSum() {
    var stringCalculator = StringCalculator();
    XCTAssertEqual(0, stringCalculator.add("0"))
  }
  
  func testOneNumberActuallyReturnsSum() {
    var stringCalculator = StringCalculator();
    XCTAssertEqual(1, stringCalculator.add("1"))
  }
  
  func testADifferentNumberActuallyReturnsSum() {
    var stringCalculator = StringCalculator();
    XCTAssertEqual(2, stringCalculator.add("2"))
  }
  
  func testTwoNumbersReturnsSum() {
    var stringCalculator = StringCalculator()
    XCTAssertEqual(2, stringCalculator.add("1,1"))
  }

}

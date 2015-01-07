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

  var _stringCalculator: StringCalculator = StringCalculator();
  
  override func setUp() {
    // Put setup code here. This method is called before the invocation of each test method in the class.
    super.setUp()
  }
  
  override func tearDown() {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    super.tearDown()
  }

  
  func testEmptyStringReturnsZero() {
    XCTAssertEqual(0, _stringCalculator.add(""))
  }
  
  func testOneNumberZeroReturnsSum() {
    XCTAssertEqual(0, _stringCalculator.add("0"))
  }
  
  func testOneNumberActuallyReturnsSum() {
    XCTAssertEqual(1, _stringCalculator.add("1"))
  }
  
  func testADifferentNumberActuallyReturnsSum() {
    XCTAssertEqual(2, _stringCalculator.add("2"))
  }
  
  func testTwoNumbersReturnsSum() {
    XCTAssertEqual(3, _stringCalculator.add("1,2"))
  }
  
  func testThreeNumbersReturnsSum() {
    XCTAssertEqual(6, _stringCalculator.add("1,2,3"));
  }
  
  func testFourNumbersReturnsSum() {
    XCTAssertEqual(8, _stringCalculator.add("1,2,2,3"))
  }
  
  func testMultipleDelimeters() {
    XCTAssertEqual(6, _stringCalculator.add("1\n2,3"))
  }
  
  func testOptionalDelimeter() {
    XCTAssertEqual(3, _stringCalculator.add("//;\n1;2"), "optional delimeter should pass")
  }
  
  func testOtherOptionalDelimeter() {
    XCTAssertEqual(4, _stringCalculator.add("//:\n2:2"))
  }
  
  func testOptionalDelimeterWithASingleNumber() {
    XCTAssertEqual(5, _stringCalculator.add("//:\n5"))
  }
  

}
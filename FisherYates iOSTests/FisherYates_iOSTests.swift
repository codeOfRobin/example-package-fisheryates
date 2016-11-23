//
//  FisherYates_iOSTests.swift
//  FisherYates iOSTests
//
//  Created by Robin Malhotra on 23/11/16.
//
//

import XCTest
@testable import FisherYates

class FisherYates_iOSTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
	
	func testShuffled() {
		var hand1 = [3,4,5,6,7,1,2,8,9,10,11,12,2,3,4,5,6,7,8,9,10,11,12]
		var count =  0
		
		for _ in 0..<1000 {
			let hand2 = hand1.shuffled()
			
			if (hand1 != hand2 && hand1.count == hand2.count &&
				hand1.reduce(0, +) == hand2.reduce(0, +)) {
				count += 1
			}
			hand1 = hand2
		}
		let result = Double(count) / 1000.00
		XCTAssertEqualWithAccuracy(result, 1, accuracy: 0.02)
	}
	
}

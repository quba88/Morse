//
//  MorseTests.swift
//  MorseTests
//
//  Created by Jakub Krystek on 19.03.2017.
//  Copyright © 2017 Jakub Krystek. All rights reserved.
//

import XCTest
@testable import Morse

class MorseTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testDecriptString() {
    
        let dectipt = Tree.sharedInstance
        
        let value = dectipt.decriptString(morseString: Alphabet.cLetter.1)
        
        XCTAssertTrue(value == Alphabet.cLetter.0, "\(value) is not equile \(Alphabet.cLetter.0)");
    }
}

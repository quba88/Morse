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

        let value = EncryptAlphabet.getCodeFromChar(char: Alphabet.bLetter.0)
            
            
            XCTAssertTrue(value == Alphabet.bLetter.1, "\(value) is not equile \(Alphabet.bLetter.1)");
        
        
          let value2 = EncryptAlphabet.getCodeFromChar(char: "assd")
        
        
        XCTAssertNil(value2, "value2 is not nil \(value2)")
        
    }
}

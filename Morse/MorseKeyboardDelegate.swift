//
//  MorseKeyboardDelegate.swift
//  Morse
//
//  Created by Jakub Krystek on 01.04.2017.
//  Copyright © 2017 Jakub Krystek. All rights reserved.
//

import Foundation

protocol MorseKeyboardDelegate: NSObjectProtocol {
    
    func getCurrentChar() -> String
    func inputChar(char:String) -> Void
    func deleteChar() -> Void
    func submit() -> Void
}

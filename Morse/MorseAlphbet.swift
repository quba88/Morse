//
//  MorseAlphbet.swift
//  Morse
//
//  Created by Jakub Krystek on 19.03.2017.
//  Copyright © 2017 Jakub Krystek. All rights reserved.
//

import Foundation

struct Alphabet {
    //space
    static let charSpace = "   "
    static let wordSpace = "       " // space bar
    
    //basic aplhabet
    static let aLetter = ("a",".-")
    static let bLetter = ("b","-...")
    static let cLetter = ("c","-.-.")
    static let dLetter = ("d","-..")
    static let eLetter = ("e",".")
    static let fLetter = ("f","..-.")
    static let gLetter = ("g","--.")
    static let hLetter = ("h","....")
    static let iLetter = ("i","..")
    static let jLetter = ("j",".---")
    static let kLetter = ("k","-.-")
    static let lLetter = ("l",".-..")
    static let mLetter = ("m","--")
    static let nLetter = ("n","-.")
    static let oLetter = ("o","---")
    static let pLetter = ("p",".--.")
    static let qLetter = ("q","--.-")
    static let rLetter = ("r",".-.")
    static let sLetter = ("s","...")
    static let tLetter = ("t","-")
    static let uLetter = ("u","..-")
    static let vLetter = ("v","...-")
    static let wLetter = ("w",".--")
    static let xLetter = ("x","-..-")
    static let yLetter = ("y","-.--")
    static let zLetter = ("z","--..")
    
    //polish chars
    static let _aLetter     = ("ą",".-.-")
    static let _cLetter     = ("ć","-.-..")
    static let _eLetter     = ("ę","..-..")
    static let chLetter     = ("ch","----")
    static let _lLetter     = ("ł",".-..-")
    static let _nLetter     = ("ń","--.--")
    static let _oLetter     = ("ó","---.")
    static let _sLetter     = ("ś","...-...")
    static let __zLetter    = ("ż","--..-.")
    static let _zLetter     = ("ź","--..-")
    
    //numbers
    static let _1number = ("1",".----")
    static let _2number = ("2","..---")
    static let _3number = ("3","...--")
    static let _4number = ("4","....-")
    static let _5number = ("5",".....")
    static let _6number = ("6","-....")
    static let _7number = ("7","--...")
    static let _8number = ("8","---..")
    static let _9number = ("9","----.")
    static let _0number = ("0","-----")
   
    //signs
    static let dotSigns             = (".",".-.-.-")
    static let commaSigns           = (",","--..--")
    static let sApostropheSigns     = ("'",".----.")
    static let apostropheSigns      = ("\"",".-..-.")
    static let _Signs               = ("_","..--.-")
    static let colonSigns           = (":","---...")
    static let semicolonSigns       = (";","-.-.-.")
    static let qMarkSigns           = ("?","..--..")
    static let eMarkSigns           = ("!","-.-.--")
    static let dashSigns            = ("-","-....-")
    static let plusSigns            = ("+",".-.-.")
    static let rhombSigns           = ("/","-..-.")
    static let oParenthesisSigns    = ("(","-.--.")
    static let cParenthesisSigns    = (")","-.--.-")
    static let equSigns             = ("=","-...-")
    static let atSigns              = ("@",".--.-.")
}

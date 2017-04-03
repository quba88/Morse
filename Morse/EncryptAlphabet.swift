//
//  DecriptAlphabet.swift
//  Morse
//
//  Created by Jakub Krystek on 03.04.2017.
//  Copyright © 2017 Jakub Krystek. All rights reserved.
//

import Foundation

class EncryptAlphabet: NSObject {
    
    class func getCodeFromChar(char:String)->String?{
        let loverCaseChar = char.lowercased()
        var decodeChar:String?
        
        
        switch loverCaseChar {
            // main alphabet
        case "a":
         decodeChar = Alphabet.aLetter.1
            break
        case "b":
            decodeChar = Alphabet.bLetter.1
            break
        case "c":
            decodeChar = Alphabet.cLetter.1
            break
        case "d":
            decodeChar = Alphabet.dLetter.1
            break
        case "e":
            decodeChar = Alphabet.eLetter.1
            break
        case "f":
            decodeChar = Alphabet.fLetter.1
            break
        case "g":
            decodeChar = Alphabet.gLetter.1
            break
        case "h":
            decodeChar = Alphabet.hLetter.1
            break
        case "i":
            decodeChar = Alphabet.iLetter.1
            break
        case "j":
            decodeChar = Alphabet.jLetter.1
            break
        case "k":
            decodeChar = Alphabet.kLetter.1
            break
        case "l":
            decodeChar = Alphabet.lLetter.1
            break
        case "m":
            decodeChar = Alphabet.mLetter.1
            break
        case "n":
            decodeChar = Alphabet.nLetter.1
            break
        case "o":
            decodeChar = Alphabet.oLetter.1
            break
        case "p":
            decodeChar = Alphabet.pLetter.1
            break
        case "q":
            decodeChar = Alphabet.qLetter.1
            break
        case "r":
            decodeChar = Alphabet.rLetter.1
            break
        case "s":
            decodeChar = Alphabet.sLetter.1
            break
        case "t":
            decodeChar = Alphabet.tLetter.1
            break
        case "u":
            decodeChar = Alphabet.uLetter.1
            break
        case "v":
            decodeChar = Alphabet.vLetter.1
            break
        case "w":
            decodeChar = Alphabet.wLetter.1
            break
        case "x":
            decodeChar = Alphabet.xLetter.1
            break
        case "y":
            decodeChar = Alphabet.yLetter.1
            break
        case "z":
            decodeChar = Alphabet.zLetter.1
            break
            
     // polish char
        case "ą":
            decodeChar = Alphabet._aLetter.1
            break
        case "ć":
            decodeChar = Alphabet._cLetter.1
            break
        case "ę":
            decodeChar = Alphabet._eLetter.1
            break
        case "ch":
            decodeChar = Alphabet.chLetter.1
            break
        case "ł":
            decodeChar = Alphabet._lLetter.1
            break
        case "ń":
            decodeChar = Alphabet._nLetter.1
            break
        case "ó":
            decodeChar = Alphabet._oLetter.1
            break
        case "ś":
            decodeChar = Alphabet._sLetter.1
            break
        case "ż":
            decodeChar = Alphabet.__zLetter.1
            break
        case "ź":
            decodeChar = Alphabet._zLetter.1
            break
 
    //numbers
        case "1":
            decodeChar = Alphabet._1number.1
          break
        case "2":
            decodeChar = Alphabet._2number.1
            break
        case "3":
            decodeChar = Alphabet._3number.1
            break
        case "4":
            decodeChar = Alphabet._4number.1
            break
        case "5":
            decodeChar = Alphabet._5number.1
            break
        case "6":
            decodeChar = Alphabet._6number.1
            break
        case "7":
            decodeChar = Alphabet._7number.1
            break
        case "8":
            decodeChar = Alphabet._8number.1
            break
        case "9":
            decodeChar = Alphabet._9number.1
            break
        case "0":
            decodeChar = Alphabet._0number.1
            break
     //signs
        case ".":
            decodeChar = Alphabet.dotSigns.1
          break
        case ",":
            decodeChar = Alphabet.commaSigns.1
            break
        case "'":
            decodeChar = Alphabet.sApostropheSigns.1
            break
        case "\"":
            decodeChar = Alphabet.apostropheSigns.1
            break
        case "_":
            decodeChar = Alphabet._Signs.1
            break
        case ":":
            decodeChar = Alphabet.colonSigns.1
            break
        case ";":
            decodeChar = Alphabet.semicolonSigns.1
            break
        case "?":
            decodeChar = Alphabet.qMarkSigns.1
            break
        case "!":
            decodeChar = Alphabet.equSigns.1
            break
        case "-":
            decodeChar = Alphabet.dashSigns.1
            break
        case "+":
            decodeChar = Alphabet.plusSigns.1
            break
        case "/":
            decodeChar = Alphabet.rhombSigns.1
            break
        case "(":
            decodeChar = Alphabet.oParenthesisSigns.1
            break
        case ")":
            decodeChar = Alphabet.cParenthesisSigns.1
            break
        case "=":
            decodeChar = Alphabet.equSigns.1
            break
        case "@":
            decodeChar = Alphabet.atSigns.1
            break

        default:
            decodeChar = nil;
        }
        
    return decodeChar
    }
    
}

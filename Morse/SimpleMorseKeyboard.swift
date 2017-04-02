//
//  SimpleMorseKeyboard.swift
//  Morse
//
//  Created by Jakub Krystek on 01.04.2017.
//  Copyright © 2017 Jakub Krystek. All rights reserved.
//

import UIKit


class SimpleMorseKeyboard: UIView {
    fileprivate var morseCryptogram:String = ""

    class func instanceFromNib() -> SimpleMorseKeyboard {
        return UINib(nibName: "SimpleMorseKeyboard", bundle: nil).instantiate(withOwner: nil, options: nil)[0] as! SimpleMorseKeyboard
    }
    
    weak var keyboardDelegate:MorseKeyboardDelegate?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    
    @IBOutlet weak var currentChar: UITextField!


    @IBAction func dashButtonAction(_ sender: UIButton) {
         self.morseCryptogram.append("-")
        self.keyboardDelegate?.inputChar(char: "-")
        self.currentChar.text = self.keyboardDelegate?.getCurrentChar(self.morseCryptogram)
    }
    
    @IBAction func dotButtonAction(_ sender: UIButton) {
        self.morseCryptogram.append(".") //char to decode
        self.keyboardDelegate?.inputChar(char: "·") // visible char upper dot
        self.currentChar.text = self.keyboardDelegate?.getCurrentChar(self.morseCryptogram)
    }
    
    @IBAction func backButtonAction(_ sender: Any) {
        
        self.morseCryptogram.remove(at: self.morseCryptogram.index(before: self.morseCryptogram.endIndex))
        
        self.keyboardDelegate?.deleteChar()
        self.currentChar.text = self.keyboardDelegate?.getCurrentChar(self.morseCryptogram)
        
    }
    
    @IBAction func submitAction(_ sender: Any) {
        self.keyboardDelegate?.submit()
    }
}

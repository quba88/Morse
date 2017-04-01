//
//  SimpleMorseKeyboard.swift
//  Morse
//
//  Created by Jakub Krystek on 01.04.2017.
//  Copyright © 2017 Jakub Krystek. All rights reserved.
//

import UIKit




class SimpleMorseKeyboard: UIView {


    class func instanceFromNib() -> UIView {
        return UINib(nibName: "SimpleMorseKeyboard", bundle: nil).instantiate(withOwner: nil, options: nil)[0] as! UIView
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
        self.keyboardDelegate?.inputChar(char: "-")
        self.currentChar.text = self.keyboardDelegate?.getCurrentChar()
    }
    
    @IBAction func dotButtonAction(_ sender: UIButton) {
        self.keyboardDelegate?.inputChar(char: ".")
        self.currentChar.text = self.keyboardDelegate?.getCurrentChar()
    }
    
    @IBAction func backButtonAction(_ sender: Any) {
        self.keyboardDelegate?.deleteChar()
        self.currentChar.text = self.keyboardDelegate?.getCurrentChar()
        
    }
    
    @IBAction func submitAction(_ sender: Any) {
        self.keyboardDelegate?.submit()
    }
}

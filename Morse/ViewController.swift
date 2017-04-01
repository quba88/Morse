//
//  ViewController.swift
//  Morse
//
//  Created by Jakub Krystek on 19.03.2017.
//  Copyright © 2017 Jakub Krystek. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var testTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
        let simpleMorseKeyboard = SimpleMorseKeyboard.instanceFromNib()
        
        self.testTextField.inputAccessoryView = simpleMorseKeyboard;
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


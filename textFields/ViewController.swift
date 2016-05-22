//
//  ViewController.swift
//  textFields
//
//  Created by Maggie Moss on 2016-05-15.
//  Copyright © 2016 Maggie Moss. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    
    @IBOutlet weak var textField3: UITextField!
    @IBOutlet weak var textFieldToggle: UISwitch!
    
    let zipCodeDelegate = ZipCodeDelegate()
    let cashFieldDelegate = CashFieldDelegate()
    let lockedFieldDelegate = LockedFieldDelegate()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // set up delegate
        self.textField1.delegate = zipCodeDelegate
        self.textField1.keyboardType = UIKeyboardType.DecimalPad
        
        self.textField2.delegate = cashFieldDelegate
        self.textField2.keyboardType = UIKeyboardType.NumbersAndPunctuation
        self.textField2.text = "$0.00"
        
        self.textField3.delegate = lockedFieldDelegate
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


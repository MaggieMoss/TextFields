//
//  zipCodeDelegate.swift
//  textFields
//
//  Created by Maggie Moss on 2016-05-15.
//  Copyright © 2016 Maggie Moss. All rights reserved.
//

import Foundation
import UIKit

class ZipCodeDelegate: NSObject, UITextFieldDelegate {

    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        let currentString = textField.text!
        if(currentString.characters.count == 5 && string.characters.count != 0){
            return false
        } else {
            return true
        }
        
    }
}
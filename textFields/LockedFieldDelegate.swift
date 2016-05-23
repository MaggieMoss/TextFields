//
//  LockedFieldDelegate.swift
//  textFields
//
//  Created by Maggie Moss on 2016-05-21.
//  Copyright © 2016 Maggie Moss. All rights reserved.
//

import Foundation
import UIKit

class LockedFieldDelegate: NSObject,UITextFieldDelegate {

    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool{
            return true
    }
    
}
//
//  CashFieldDelegate.swift
//  textFields
//
//  Created by Maggie Moss on 2016-05-17.
//  Copyright © 2016 Maggie Moss. All rights reserved.
//

import Foundation
import UIKit

class CashFieldDelegate: NSObject,  UITextFieldDelegate {
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool{
      
        //TODO: find a way around all of this 'as String' stuff
        var newText = textField.text! as NSString
        newText = newText.stringByReplacingCharactersInRange(range, withString: string)
        
        // remove $
        newText = removeDollar(newText as String)
        
        // then remove '.'
        newText = removeDecimal(newText as String)
        
        // remove '00' at front if number is long enough
        newText = removeExtraZeros(newText as String)
      
        
        // then add it back in
        newText = addDecimal(newText as String)
        
        // add the dollar back in
        newText = addDollar(newText as String)
        textField.text = newText as String
        
        return false
    }

    func removeDecimal(string: String) -> String {
        var newString = ""
        for char in string.characters {
            if char != "." {
                newString.append(char)
            }
        }
        return newString
    }
    func removeExtraZeros(var string: String) -> String {
        print("string that needs to be reformatted: \(string)")
        if string.characters.count < 4 {
            string.insert("0", atIndex: string.startIndex)
            return string
        } else {
            if string.characters.first == "0" {
                string.removeAtIndex(string.startIndex)
            }
        }
        return string
    }
    func addDecimal(var string: String) -> String {
        string.insert(".", atIndex: string.endIndex.advancedBy(-2))
        return string
    }
    func removeDollar(var string: String) -> String {
        string.removeAtIndex(string.startIndex)
        return string
    }
    func addDollar(var string: String) -> String {
        string.insert("$", atIndex: string.startIndex)
        return string
    }
}
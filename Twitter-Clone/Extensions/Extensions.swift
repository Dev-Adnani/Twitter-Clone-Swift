//
//  Extensions.swift
//  Twitter-Clone
//
//  Created by Dev Adnani on 21/12/22.
//

import UIKit

extension UIApplication
{
    func endEditing()
    {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
 

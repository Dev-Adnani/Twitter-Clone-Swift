//
//  Extensions.swift
//  Twitter-Clone
//
//  Created by Dev Adnani on 21/12/22.
//

import UIKit
import SwiftUI

extension UIApplication
{
    func endEditing()
    {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
 

extension View
{
    func getRect() -> CGRect
    {
        return UIScreen.main.bounds
    }
}

//
//  MultilineTextField.swift
//  Twitter-Clone
//
//  Created by Dev Adnani on 21/12/22.
//

import SwiftUI

struct MultiLineTextField:UIViewRepresentable
{
    @Binding var text:String
    
    func makeCoordinator() -> MultiLineTextField.Coordinatior {
        return MultiLineTextField.Coordinator(parent1: self)
    }
    
    func makeUIView(context: Context) -> some UITextView {
        let text = UITextView()
        text.isEditable = true
        text.text = "Type Something"
        text.isUserInteractionEnabled =  true
        text.font = .systemFont(ofSize: 20)
        text.textColor = .gray
        text.delegate = context.coordinator
        return text
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
    
    class Coordinatior : NSObject,UITextViewDelegate
    {
        var parent : MultiLineTextField
        
        init(parent1: MultiLineTextField) {
            parent = parent1
        }
        
        func textViewDidBeginEditing(_ textView: UITextView) {
            textView.text = ""
            textView.textColor = .black
        }
        
        func textViewDidChange(_ textView: UITextView) {
            self.parent.text = textView.text
        }
    }
}

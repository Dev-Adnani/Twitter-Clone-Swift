//
//  BlurView.swift
//  Twitter-Clone
//
//  Created by Dev Adnani on 27/12/22.
//

import SwiftUI

struct BlurView : UIViewRepresentable
{
    func makeUIView(context: Context) -> some UIVisualEffectView {
        let view = UIVisualEffectView(effect: UIBlurEffect(style: .systemChromeMaterialDark))
        return view
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
}

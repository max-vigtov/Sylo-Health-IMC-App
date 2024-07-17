//
//  ToggleButton.swift
//  Sylo Health IMC App
//
//  Created by Max Vigueras Tovar on 16/07/24.
//

import SwiftUI

struct ToggleButton:View {
    let text:String
    let imageName:String
    let gender:Int
    @Binding var selectedGender:Int
    
    var body: some View {
        
        let color = if (gender == selectedGender){
            Color.backgroundComponentSelected
        } else{
            Color.backgroundComponent
        }
        
        
        Button (action: {
            selectedGender = gender
        }) {
            VStack {
                Image(systemName: imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 50)
                    .foregroundColor(.white)
               InformationText(text: text)
                    
            }.frame(
                maxWidth: .infinity,
                maxHeight: .infinity)
                    .background(color)
        }
    }
}

//#Preview {
   // ToggleButton()
//}

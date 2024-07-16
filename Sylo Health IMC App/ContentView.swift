//
//  ContentView.swift
//  Sylo Health IMC App
//
//  Created by Max Vigueras Tovar on 15/07/24.
//

import SwiftUI

struct ContentView: View {
 //   init() {
 //       UINavigationBar.appearance()
 //           .titleTextAttributes = [.foregroundColor:UIColor.white]
 //   }
    @State var selectedGender: Int = 0
    @State var selectedHeight: Double = 160

    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    ToggleButton(text: "Hombre", imageName: "mustache.fill", 
                        gender: 0, selectedGender: $selectedGender)
                    ToggleButton(text: "Mujer", imageName: "mouth.fill",
                        gender: 1 ,selectedGender: $selectedGender)

                }
                
                HeightCalculator(selectedHeight: $selectedHeight)

              
            }.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
                .background(.backgroundaApp)
                .toolbar{
                    ToolbarItem(placement: .principal) {
                        Text("IMC Calculator").bold().foregroundStyle(.white)
                    }
            }
        }
    }
}

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

struct InformationText:View {
    let text:String
    var body: some View {
        Text(text)
            .font(.largeTitle)
            .bold().foregroundStyle(.white)
    }
}

struct TitleText:View {
    let text:String
    var body: some View {
        Text(text)
            .font(.title2)
            .foregroundStyle(.gray)
    }
}

struct HeightCalculator: View {
    @Binding var selectedHeight:Double
    var body: some View {
        VStack{
            TitleText(text: "Altura")
            InformationText(text: "\(Int(selectedHeight)) cm")
            
            Slider(value: $selectedHeight, in: 100...220, step: 1)
                .accentColor(.purple)
                .padding(.horizontal, 16)
            
        }.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
            .background(.backgroundComponent)
    }
}


#Preview {
    ContentView()
}

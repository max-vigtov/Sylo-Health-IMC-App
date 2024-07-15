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
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    ToggleButton(text: "Hombre", imageName: "mustache.fill", index: 0)
                    ToggleButton(text: "Mujer", imageName: "mouth.fill", index: 0)

                }
              
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
    let index:Int
    var body: some View {
        Button (action: {}) {
            VStack {
                Image(systemName: imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 50)
                    .foregroundColor(.white)
               InformationText(text: text)
                    
            }.frame(maxWidth: .infinity, maxHeight: .infinity).background(.backgroundComponent)
            
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

#Preview {
    ContentView()
}

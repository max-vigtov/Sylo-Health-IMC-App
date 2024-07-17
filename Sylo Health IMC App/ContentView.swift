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
    @State var selectedAge: Int = 30
    @State var selectedWeight: Int = 80
    
    var body: some View {
        NavigationStack{
        NavigationView {
            VStack {
                HStack {
                    ToggleButton(text: "Hombre", imageName: "mustache.fill",
                                 gender: 0, selectedGender: $selectedGender)
                    ToggleButton(text: "Mujer", imageName: "mouth.fill",
                                 gender: 1 ,selectedGender: $selectedGender)
                    
                }
                
                HeightCalculator(selectedHeight: $selectedHeight)
                HStack{
                    CounterComponent(title: "Edad", valueNumber: $selectedAge)
                    CounterComponent(title: "Peso", valueNumber: $selectedWeight)
                }
                CalculateButton()
                
                
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
}




struct CalculateButton: View {
    var body: some View {
        NavigationStack{
            NavigationLink(destination:{}) {
                Text("Calcular").font(.title).bold().foregroundColor(.purple)
                    .frame(maxWidth: .infinity, maxHeight: 100).background(.backgroundComponent)
            }
        }
    }
}

#Preview {
    ContentView()
}

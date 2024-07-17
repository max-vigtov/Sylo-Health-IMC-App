//
//  CounterComponent.swift
//  Sylo Health IMC App
//
//  Created by Max Vigueras Tovar on 16/07/24.
//

import SwiftUI

struct CounterComponent: View {
    var title: String
    @Binding var valueNumber: Int
    var body: some View {
        VStack{
            TitleText(text: title)
            InformationText(text: String(valueNumber))
            HStack{
               CounterButton(valueNumber: $valueNumber, operationType: "minus")
               CounterButton(valueNumber: $valueNumber, operationType: "plus")
            }
        }.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
            .background(.backgroundComponent)
    }
}


struct CounterButton: View {
    @Binding var valueNumber: Int
    var operationType: String
    var body: some View {
        Button(  action: {
            if (operationType == "minus" && valueNumber > 0){
                valueNumber -= 1
            }else if(operationType == "plus" && valueNumber < 100){
                valueNumber += 1
            }else{}
            
        }, label: {
            Image(systemName: operationType )
                .resizable()
                .scaledToFit()
                .frame(width: 25,height: 25)
                .foregroundColor(.white)
                
                
            
        })  .frame(width: 60,height: 60)
            
            .background(.purple)
            .cornerRadius(60)
    }
}

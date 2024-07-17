//
//  InformationText.swift
//  Sylo Health IMC App
//
//  Created by Max Vigueras Tovar on 16/07/24.
//

import SwiftUI

struct InformationText:View {
    let text:String
    var body: some View {
        Text(text)
            .font(.largeTitle)
            .bold().foregroundStyle(.white)
    }
}

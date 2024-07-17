//
//  TitleText.swift
//  Sylo Health IMC App
//
//  Created by Max Vigueras Tovar on 16/07/24.
//

import SwiftUI

struct TitleText:View {
    let text:String
    var body: some View {
        Text(text)
            .font(.title2)
            .foregroundStyle(.gray)
    }
}


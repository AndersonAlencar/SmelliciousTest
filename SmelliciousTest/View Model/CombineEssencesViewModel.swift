//
//  CombineEssencesViewModel.swift
//  SmelliciousTest
//
//  Created by Emilly Maia on 15/09/22.
//

import SwiftUI
import Algorithms

func ResetButton() -> some View {
    Button {
        
    }label: {
        Image(systemName: "arrow.clockwise")
            .resizable()
    }
    .foregroundColor(Color.init( red: 0.19, green: 0.28, blue: 0.23))
    
}

func Difusor() -> some View {
    Image("Difusor")
        .resizable()
        .aspectRatio(contentMode: .fit)
        .frame(width: 224, height: 146, alignment: .center)
}

@ViewBuilder
func DropArea() -> some View {
    Image("")
        .resizable()
        .frame(width: 100, height: 100)
        .clipShape(Circle())
        .overlay(Circle().stroke(Color.init( red: 0.19, green: 0.28, blue: 0.23), lineWidth: 2))
        .onDrop(of: [.url], isTargeted: .constant(false)) { providers in
            if let first = providers.first {
                let _ =  first.loadObject(ofClass: URL.self) { value, error in
                    guard let url = value else{return}
                    print(url)
                }
            }
            
            return false
        }
    
}





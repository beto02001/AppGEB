//
//  VistaModificadora.swift
//  Intento de forfmulario
//
//  Created by Luis Humberto Martinez Echegaray on 28/06/21.
//

import Foundation
import SwiftUI

struct diseñotext : ViewModifier{
    var teclado : UIKeyboardType
    func body(content: Content) -> some View{
        content
            .keyboardType(teclado)
            .padding()
            .border(Color.white, width: 2)
            .cornerRadius(5)
            .foregroundColor(.white)
            .accentColor(.white)
    }
}

struct boton : ViewModifier{
    func body(content: Content) -> some View {
        content
            .navigationBarTitle("Formulas", displayMode: .inline)
            .background(Color.orange)
            .cornerRadius(16)
            .foregroundColor(.white)
    }
}

//
//  VistaOMS.swift
//  Intento de forfmulario
//
//  Created by Luis Humberto Martinez Echegaray on 02/06/21.
//

import SwiftUI
import Foundation

struct VistaOMS: View {
    @State private var peso: String = ""
    @State private var edad: String = ""
    
    var body: some View {
        VStack(alignment: .center, spacing: 20){
            Text("OMS")
                .font(.largeTitle)
                .foregroundColor(.white)
                .bold()
            
            TextField("Edad del paciente", text: $edad)
                .keyboardType(.numberPad)
                .padding()
                .border(Color.white, width: 2)
                .cornerRadius(5)
                .foregroundColor(.white)
                .accentColor(.white)
                
            TextField("Peso del paciente", text: $peso)
                .keyboardType(.decimalPad)
                .padding()
                .border(Color.white, width: 2)
                .cornerRadius(5)
                .foregroundColor(.white)
                .accentColor(.white)
                
            let TGE = OMS(anios: edad, peso: peso)
            let mayoredad = Float(edad) ?? 0
        
            if mayoredad < 18{
                Text("Dijite una una edad mayor a 18")
                    .foregroundColor(.white)
                    .font(.title3)
            }else{
                Text("El total es: \(TGE) kcal")
                    .foregroundColor(.white)
                    .font(.title3)
            }
            Spacer()
            
        }.padding(.all)
        .background(LinearGradient(gradient: Gradient(colors: [Color.blue, Color.purple]), startPoint: .bottom, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/))
        .navigationTitle("OMS")
    }
}
struct VistaOMS_Previews: PreviewProvider {
    static var previews: some View {
            VistaOMS()
            
    }
}

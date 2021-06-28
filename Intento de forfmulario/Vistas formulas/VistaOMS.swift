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
    @State private var sexo: Bool = true
    var body: some View {
        VStack(spacing: 35){
            Text("OMS")
                .font(.largeTitle)
                .foregroundColor(.white)
                .bold()
            
            VStack(alignment: .leading, spacing: 15){
                Text("Edad:")
                    .font(.body).foregroundColor(.white)
                TextField("Edad", text: $edad)
                    .modifier(diseñotext(teclado: .numberPad))
                
                Text("Peso del paciente kg:")
                    .font(.body).foregroundColor(.white)
                TextField("Peso", text: $peso)
                    .modifier(diseñotext(teclado: .decimalPad))
                
                Picker("Sexo", selection: $sexo,
                       content: {
                            Text("Hombre").tag(true)
                            Text("Mujer").tag(false)
                        })
                        .pickerStyle(SegmentedPickerStyle())
                        .background(Color.gray.opacity(0.1))
                        .padding(.top)
            }
            let TGE = OMS(anios: edad, peso: peso, sexo: sexo)
            let mayoredad = Float(edad) ?? 0
        
            if mayoredad < 18{
                Text("Digite una una edad mayor a 18")
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

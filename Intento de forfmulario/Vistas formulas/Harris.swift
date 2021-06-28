//
//  Harris.swift
//  Intento de forfmulario
//
//  Created by Luis Humberto Martinez Echegaray on 02/06/21.
//

import SwiftUI

struct Harris: View {
    
    @State private var peso: String = ""
    @State private var edad: String = ""
    @State private var talla: String = ""
    @State private var sexo: Bool = true
    var body: some View {
        VStack(spacing: 24){
            Text("Harris Benedict")
                .font(.largeTitle)
                .foregroundColor(.white)
                .bold()
                .padding(.top)
            
            VStack(alignment: .leading, spacing: 15){
                Text("Edad:")
                    .font(.body).foregroundColor(.white)
                TextField("Edad", text: $edad)
                    .modifier(diseñotext(teclado: .numberPad))
                
                Text("Talla en cm:")
                    .font(.body).foregroundColor(.white)
                TextField("Talla", text: $talla)
                    .modifier(diseñotext(teclado: .numberPad))
                
                Text("Peso del paciente kg:")
                    .font(.body).foregroundColor(.white)
                TextField("Peso", text: $peso)
                    .modifier(diseñotext(teclado: .decimalPad))
            }
            
            Picker("Sexo", selection: $sexo,
                   content: {
                        Text("Hombre").tag(true)
                        Text("Mujer").tag(false)
                    })
                    .pickerStyle(SegmentedPickerStyle())
                    .background(Color.gray.opacity(0.1))
                     
            let TGE = HarrisBenedict(peso: peso, talla: talla, edad: edad, sexo: sexo)
            
            if (peso == "" || talla == "") || edad == ""{
                Text("El total es: 0 kcal")
                    .foregroundColor(.white)
                    .font(.title3)
                    
            }else{
                Text("El total es: \(TGE) kcal")
                    .foregroundColor(.white)
                    .font(.title3)
            }
            
            Spacer()
        }.padding(.all)
        .background(LinearGradient(gradient: Gradient(colors: [Color.purple, Color.blue]), startPoint: .bottom, endPoint: .top))
        .navigationTitle("Harris benedict")

    }
}

struct Harris_Previews: PreviewProvider {
    static var previews: some View {
        Harris()
    }
}

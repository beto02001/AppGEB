//
//  vistaIOM.swift
//  Intento de forfmulario
//
//  Created by Luis Humberto Martinez Echegaray on 05/06/21.
//

import SwiftUI

struct vistaIOM: View {
    @State private var peso: String = ""
    @State private var edad: String = ""
    @State private var talla: String = ""
    
    var body: some View {
        VStack(spacing: 24){
            Text("IOM")
                .font(.largeTitle)
                .foregroundColor(.white)
                .bold()
                .padding(.top)
            
            VStack(alignment: .leading, spacing: 15){
                Text("Edad:")
                    .font(.body).foregroundColor(.white)
                TextField("Edad", text: $edad)
                    .keyboardType(.numberPad)
                    .padding()
                    .border(Color.white, width: 2)
                    .cornerRadius(5)
                    .foregroundColor(.white)
                    .accentColor(.white)
                Text("Talla del paciente metros:")
                    .font(.body).foregroundColor(.white)
                TextField("Talla", text: $talla)
                    .keyboardType(.numberPad)
                    .padding()
                    .border(Color.white, width: 2)
                    .cornerRadius(5)
                    .foregroundColor(.white)
                    .accentColor(.white)
                
                Text("Peso del paciente kg:")
                    .font(.body).foregroundColor(.white)
                TextField("Peso", text: $peso)
                    .keyboardType(.decimalPad)
                    .padding()
                    .border(Color.white, width: 2)
                    .cornerRadius(5)
                    .foregroundColor(.white)
                    .accentColor(.white)
            }
            
            
            let TGE = IOM(peso: peso, talla: talla, edad: edad)
            
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
        .navigationTitle("IOM")
    }
}


struct vistaIOM_Previews: PreviewProvider {
    static var previews: some View {
        vistaIOM()
    }
}

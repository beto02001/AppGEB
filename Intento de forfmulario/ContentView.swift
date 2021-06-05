//
//  ContentView.swift
//  Intento de forfmulario
//
//  Created by Luis Humberto Martinez Echegaray on 31/05/21.
//

import SwiftUI

struct ContentView: View {
    @State private var formulasNom = llenado()

    var body: some View {
        NavigationView{
            VStack(alignment: .center, spacing: 40){
                    
                NavigationLink(destination: Harris(),label: {Text("Harris-Benedict")})
                    .navigationBarTitle("Formulas", displayMode: .inline)
                    .padding(.top, 50)
                    
                NavigationLink(destination: VistaOMS(),label: {Text("FAM/OMS")})

                NavigationLink(destination: vistaIOM(),label: {Text("IOM")})
                    
                NavigationLink(destination: VistaOMS(),label: {Text("Mifflin")})
                Spacer()
            }
        }
        
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .background(Color.green)
    }
}


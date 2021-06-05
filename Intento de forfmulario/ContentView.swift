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
                Spacer()
                NavigationLink(destination: Harris(),label: {Text("Harris-Benedict") .padding(.all,25)})
                    .navigationBarTitle("Formulas", displayMode: .inline)
                    .background(Color.orange)
                    .cornerRadius(16)
                    .foregroundColor(.white)
                    
                NavigationLink(destination: VistaOMS(),label: {Text("FAM/OMS").padding(.all,25)})
                    .navigationBarTitle("Formulas", displayMode: .inline)
                    .background(Color.orange)
                    .cornerRadius(16)
                    .foregroundColor(.white)

                NavigationLink(destination: vistaIOM(),label: {Text("IOM").padding(.all,25)})
                    .navigationBarTitle("Formulas", displayMode: .inline)
                    .background(Color.orange)
                    .cornerRadius(16)
                    .foregroundColor(.white)
                    
                NavigationLink(destination: VistaOMS(),label: {Text("Mifflin").padding(.all,25)})
                    .navigationBarTitle("Formulas", displayMode: .inline)
                    .background(Color.orange)
                    .cornerRadius(16)
                    .foregroundColor(.white)
                Spacer()
            }.frame(width: 500)
            .background(LinearGradient(gradient: Gradient(colors: [Color.purple, Color.blue]), startPoint: .bottom, endPoint: .top))
        
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


/*NavigationView{
    VStack(alignment: .center, spacing: 40){
            
        NavigationLink(destination: Harris(),label: {Text("Harris-Benedict")})
            .navigationBarTitle("Formulas", displayMode: .inline)
            .padding(.top, 50)
            
        NavigationLink(destination: VistaOMS(),label: {Text("FAM/OMS")})

        NavigationLink(destination: vistaIOM(),label: {Text("IOM")})
            
        NavigationLink(destination: VistaOMS(),label: {Text("Mifflin")})
        Spacer()
    }
}*/

//
//  ContentView.swift
//  Intento de forfmulario
//
//  Created by Luis Humberto Martinez Echegaray on 31/05/21.
//

import SwiftUI

struct ContentView: View {
    @State private var modal: Bool = false
    var body: some View {
        NavigationView{
            VStack(alignment: .center, spacing: 40){
                Spacer()
                NavigationLink(destination: Harris(),label: {Text("Harris-Benedict") .padding(.all,25)})
                    .modifier(boton())
                    
                NavigationLink(destination: VistaOMS(),label: {Text("FAM/OMS").padding(.all,25)})
                    .modifier(boton())

                NavigationLink(destination:   vistaIOM(),label: {Text("IOM").padding(.all,25)})
                    .modifier(boton())
                    
                NavigationLink(destination: VistaMifflin(),label: {Text("Mifflin").padding(.all,25)})
                    .modifier(boton())
                Spacer()
                
                Button("Fuentes"){
                    self.modal.toggle()
                }.sheet(isPresented: self.$modal){
                    VStack(alignment: .center){
                        Spacer()
                        fuentes()
                        Spacer()
                        Button("Atrás"){
                            self.modal.toggle()
                        }.foregroundColor(Color("ColorTextoFuentes"))
                       
                    }
                }.padding()
                .foregroundColor(.white)
            }.frame(width: 500)
            .background(LinearGradient(gradient: Gradient(colors: [Color.purple, Color.blue]), startPoint: .bottom, endPoint: .top))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.colorScheme, .dark)
    }
}

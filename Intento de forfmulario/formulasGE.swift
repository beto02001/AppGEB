//
//  formulasGE.swift
//  Intento de forfmulario
//
//  Created by Luis Humberto Martinez Echegaray on 02/06/21.
//

import Foundation
import SwiftUI

func convertir(dato: String) -> Float {
    return Float(dato) ?? 0
}

//bien
func OMS(anios : String, peso : String, sexo : Bool) -> Float {
    let aniosF = convertir(dato: anios)
    let pesoF = convertir(dato: peso)
    var GER : Float = 0

    if sexo{
        if aniosF >= 18 && aniosF <= 30 {
            GER = 15.3 * pesoF + 679
        }else{
            if aniosF <= 60 {
                GER = 11.6 * pesoF + 879
            }else{
                GER = 13.5 * pesoF + 487
            }
        }
    }else{
        if aniosF >= 18 && aniosF <= 30 {
            GER = 14.7 * pesoF + 496
        }else{
            if aniosF <= 60 {
                GER = 8.7 * pesoF + 829
            }else{
                GER = 10.5 * pesoF + 596
            }
        }
    }
    return GER
}

//Bien
func HarrisBenedict(peso: String, talla: String, edad: String, sexo: Bool) -> Float {
    let pesof = convertir(dato: peso)
    let tallaf = convertir(dato: talla)
    let edadf = convertir(dato: edad)
    var GET: Float = 0
    if sexo {
        GET = 66.47 + 13.75 * pesof + 5 * tallaf - 6.75 * edadf
    }else{
        GET = 655.09 + 9.563 * pesof + 1.84 * tallaf - 4.676 * edadf
    }
    
    return GET
}

//bien
func IOM(peso: String, talla: String, edad: String) -> Float {
    let pesof = convertir(dato: peso)
    let tallaf = convertir(dato: talla)
    let edadf = convertir(dato: edad)
    let GET : Float = 247-2.637*edadf+401.5*tallaf+8.6*pesof
    return GET
}

func mifflin(peso: String, talla: String, edad: String, sexo: Bool) -> Float {
    let pesof = convertir(dato: peso)
    let tallaf = convertir(dato: talla)
    let edadf = convertir(dato: edad)
    var GET: Float = 0
    if sexo {
        GET = 9.99*pesof+6.25*tallaf-4.92*edadf+5
    }else{
        GET = 9.99*pesof+6.25*tallaf-4.92*edadf-161
    }
    return GET
}

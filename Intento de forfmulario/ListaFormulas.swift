//
//  ListaFormulas.swift
//  Intento de forfmulario
//
//  Created by Luis Humberto Martinez Echegaray on 01/06/21.
//

import Foundation
import SwiftUI

struct formulas: Identifiable {
    var id = UUID()
    var nomformula : String
    var numvista : Int

}

func llenado() -> [formulas]{
    var nombreFormulas = [formulas]()
    nombreFormulas.append(formulas(nomformula: "IOM", numvista: 1))
    nombreFormulas.append(formulas(nomformula: "Mifflin", numvista: 2))
    nombreFormulas.append(formulas(nomformula: "Harris-Benedict", numvista: 3))
    nombreFormulas.append(formulas(nomformula: "IOM", numvista: 4))
    nombreFormulas.append(formulas(nomformula: "Mifflin", numvista: 5))
    nombreFormulas.append(formulas(nomformula: "Harris-Benedict", numvista: 6))
    return nombreFormulas
}

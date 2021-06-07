//
//  fuentes.swift
//  Intento de forfmulario
//
//  Created by Luis Humberto Martinez Echegaray on 07/06/21.
//

import SwiftUI

struct fuentes: View {
    var body: some View {
            VStack(spacing: 25){
                Spacer()
                Text("Fuentes").bold().font(.title)
                    .foregroundColor(.blue)
                Text("Mifflin MD, St Jeor ST, Hill LA, Scott BJ, Daugherty SA, Koh YO. A new predictive equation for resting energy expenditure in healthy individuals. Am J Clin Nutr 1990; 51 (2): 241-247.")
                    .foregroundColor(.black).padding()
                
                Text("FAO/WHO/UNU. Energy and Protein Requirements. Report of a Joint FAO/WHO/UNU Expert Consultation World Health Organization Technical Report Series 724. Geneva, Switzer- land: WHO: 1985.")
                    .foregroundColor(.black).padding()
                
                Text("Harris JA, Benedict FG. A biometric study of basal metabolism in man. W ashington DC: Carnegie Institute of W ashington. 681 Publication No 279, 1919.")
                    .foregroundColor(.black).padding()
                Spacer()
            }
            .background(Color.white)
        }

}

struct fuentes_Previews: PreviewProvider {
    static var previews: some View {
        fuentes()
    }
}

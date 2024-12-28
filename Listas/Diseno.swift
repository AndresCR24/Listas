//
//  ListaCompleta.swift
//  Listas
//
//  Created by Andres David Cardenas Ramirez on 4/12/24.
//

import SwiftUI


struct Diseno: View {
    
    var index: DatosImagenes2
    
    var body: some View {
            HStack {
                Image(index.image)
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(.rect(cornerRadius: 15))
                Text(index.name)
            }
        }
        
    }

//#Preview {
//    var testIndex = DatosImagenes(name: "Test", image: "test")
//    
//    Diseno(index: testIndex)
//}

    




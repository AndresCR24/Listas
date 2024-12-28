//
//  ListaImagenes.swift
//  Listas
//
//  Created by Andres David Cardenas Ramirez on 2/12/24.
//

import SwiftUI

struct ListaImagenes: View {
    
            var imagenesYnombres1 = [
                DatosImagenes(name: "Logo de apple", image: "Apple-logo"),
                DatosImagenes(name: "Logo facebook" , image:"facebook" ),
                DatosImagenes(name: "Logo facebook", image: "fondo"),
                DatosImagenes(name: "Color de fondo", image: "fondo" ),
                DatosImagenes(name: "Logo google" , image: "google"),
                DatosImagenes(name: "Logo clasico" , image: "logo"),
                DatosImagenes(name: "Logo SwiftUI" , image: "logoswift"),
                DatosImagenes(name: "Logo SwiftUI con fondo", image: "swiftUI")
            ]
    var imagenesYnombres = [
        DatosImagenes2(name: "Logo de apple", image: "Apple-logo", descripcion: "Logo de apple con el que se presentan productos", valoracion: 3),
        DatosImagenes2(name: "Logo facebook" , image:"facebook", descripcion: "Este es el logo que se presento para facebook", valoracion: 2)
//                        DatosImagenes(name: "Logo facebook", image: "fondo"),
//                        DatosImagenes(name: "Color de fondo", image: "fondo" ),
//                        DatosImagenes(name: "Logo google" , image: "google"),
//                        DatosImagenes(name: "Logo clasico" , image: "logo"),
//                        DatosImagenes(name: "Logo SwiftUI" , image: "logoswift"),
//                        DatosImagenes(name: "Logo SwiftUI con fondo", image: "swiftUI")
    ]
    
    var body: some View {
        //
        //        List(self.imagenesYnombres, id: \.id) { index in
        //            Diseno(index: index)
        //        }
        //        List{
        //            ForEach(self.imagenesYnombres.indices, id: \.self) { index in
        //                if(0...2).contains(index) {
        //                    FullImageStyle(index: self.imagenesYnombres[index])
        //                } else {
        //                    Diseno(index: self.imagenesYnombres[index])
        //                }
        //            }
        //            .listRowSeparatorTint(.teal)
        //        }
        //        .listStyle(.insetGrouped)
        //        .background(Image("fondo")
        //        .resizable()
        //        .ignoresSafeArea())
        //        .scrollContentBackground(.hidden)
        
        // Normalmente no es necesario el ForEach directamente en el List ya que esta en swiftUI puede actuar directamente como un forEach por propiedades del mismo
        List(self.imagenesYnombres1.indices, id: \.self) { index2 in
            if(0...2).contains(index2) {
                FullImageStyle(index: self.imagenesYnombres1[index2])
            } else {
                Diseno(index: self.imagenesYnombres1[index2])
            }
        }
        .listStyle(.insetGrouped)
        .background(Image("fondo")
            .resizable()
            .ignoresSafeArea())
        .scrollContentBackground(.hidden)
        //        List{
        //            ForEach(self.imagenesYnombres.indices, id: \.self) { index in
        //
        //                CardView(datosDisenoCard: self.imagenesYnombres[index])
        //
        //            }
        //            .listRowSeparatorTint(.teal)
        //        }
        //        .listStyle(.insetGrouped)
        //        .background(Image("fondo")
        //            .resizable()
        //            .ignoresSafeArea())
        //        .scrollContentBackground(.hidden)
        //        List(self.imagenesYnombres, id: \.id) { index in
        //            CardView(datosDisenoCard: index)
        //        }
        
        //        .listStyle(.insetGrouped)
        //        .background(Image("fondo")
        //        .resizable()
        //        .ignoresSafeArea())
        //        .scrollContentBackground(.hidden)
        //        .listRowSeparatorTint(.teal)
        //    }
    }
}
#Preview {
    ListaImagenes()
}

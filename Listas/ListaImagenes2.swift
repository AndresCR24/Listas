//
//  ListaImagenes2.swift
//  Listas
//
//  Created by Andres David Cardenas Ramirez on 4/12/24.
//



import SwiftUI

struct ListaImagenes2: View {
    
    var imagenesYnombres1 = [
        DatosImagenes(name: "Logo de apple", image: "Apple-logo"),
        DatosImagenes(name: "Logo facebook" , image:"facebook"),
        DatosImagenes(name: "Logo facebook", image: "fondo"),
        DatosImagenes(name: "Color de fondo", image: "fondo" ),
        DatosImagenes(name: "Logo google" , image: "google"),
        DatosImagenes(name: "Logo clasico" , image: "logo"),
        DatosImagenes(name: "Logo SwiftUI" , image: "logoswift"),
        DatosImagenes(name: "Logo SwiftUI con fondo", image: "swiftUI")
    ]
    
    var body: some View {
        NavigationStack {
            //            List(self.imagenesYnombres, id: \.id) { index in
            //                CardView(datosDisenoCard: index)
            //                    .listRowSeparator(.visible, edges: .bottom)
            //                    .listRowSeparatorTint(.blue)
            //            }
            //            .listStyle(.plain)
            //            .background(Image("fondo")
            //                .resizable()
            //                .ignoresSafeArea())
            //            .scrollContentBackground(.hidden)
            //            .listRowSeparatorTint(.teal)
            //
            //            .navigationTitle("Imagenes diseñadas")
            List(self.imagenesYnombres1, id: \.id) { index in
                NavigationLink(destination: CardView(datosDisenoCard: index)){
                    Diseno(index: index)
                }
            }
            .navigationTitle("Imagenes")
        }
        
    }
}
#Preview {
    ListaImagenes2()
}


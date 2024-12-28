//
//  DatosImagenes.swift
//  Listas
//
//  Created by Andres David Cardenas Ramirez on 2/12/24.
//

import Foundation

struct DatosImagenes: Identifiable {
    var id = UUID()
    var name: String
    var image: String
//    var descripcion: String
//    var valoracion: Int
}

struct DatosImagenes2: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var descripcion: String
    var valoracion: Int
}

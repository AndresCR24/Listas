//
//  FullImageStyle.swift
//  Listas
//
//  Created by Andres David Cardenas Ramirez on 4/12/24.
//

import SwiftUI

struct FullImageStyle: View {
    
    var index: DatosImagenes
    
    init() {
        let navBarAppearance = UINavigationBarAppearance()
        
        // Declarar el diccionario de atributos antes de usarlo
        var largeTitleAttributes: [NSAttributedString.Key: Any] = [
            .foregroundColor: UIColor.systemTeal
        ]
        
        // Verificar el opcional y agregar la fuente si existe
        if let font = UIFont(name: "ArianRoundedMTBold", size: 30) {
            largeTitleAttributes[.font] = font
        }
        
        // Asignar los atributos al estilo de navegación
        navBarAppearance.largeTitleTextAttributes = largeTitleAttributes
        
        // Aplicar la apariencia al UINavigationBar (opcional, según tu configuración)
        UINavigationBar.appearance().standardAppearance = navBarAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = navBarAppearance
        UINavigationBar.appearance().compactAppearance = navBarAppearance
    }
    var body: some View {
        
        ZStack {
            Image(index.image)
                .resizable()
                .frame(width: .infinity, height: 150)
                .clipShape(.rect(cornerRadius: 36))
                .overlay {
                    Rectangle()
                        .foregroundStyle(.gray)
                        .opacity(Double(0.3))
                        .clipShape(.rect(cornerRadius: 36))
                }
            //.clipShape(.rect(cornerRadius: 20))
            Text(index.name)
                .font(.system(.largeTitle, design: .rounded))
                .foregroundStyle(.white)
                .bold()
        }
        .padding()
        
        
    }
    
    
}
#Preview {
    
    var testIndex = DatosImagenes(name: "Test", image: "facebook")
    FullImageStyle(index: testIndex)
}

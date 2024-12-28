//
//  CardView.swift
//  Listas
//
//  Created by Andres David Cardenas Ramirez on 4/12/24.
//

import SwiftUI

struct CardView: View {
    var datosDisenoCard: DatosImagenes2
    
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 8) {
                Image(datosDisenoCard.image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    //.frame(height: 190)
                    .frame(width: .infinity)
                    //.scaleEffect(0.5)
                    .clipShape(.rect(cornerRadius: 25))
                Text(datosDisenoCard.name)
                    .font(.system(.largeTitle, design: .rounded))
                    .bold()
                    .lineLimit(1)
                    .padding(.bottom, 2)
                Text(datosDisenoCard.descripcion)
                    .font(.system(.headline, design: .rounded))
                    .bold()
                    .lineLimit(1)
                    .padding(.bottom, 2)
                    .foregroundStyle(.secondary)
                HStack{
                    if datosDisenoCard.valoracion > 0 {
                        ForEach(1...(datosDisenoCard.valoracion), id: \.self) { _ in
                            Image(systemName: "star.fill")
                                .foregroundStyle(.teal)
                        }
                        }else {
                            // Si dan como valoracion 0 por defecto seria estrella sin rellenar
                            Image(systemName: "star")
                    }
                }
                
            }
        }
        .padding()
    }
}

#Preview {
    var test = DatosImagenes2(name: "Probando", image: "facebook", descripcion: "probando como se ve la card", valoracion: 1)
    List{
        CardView(datosDisenoCard: test)
    }
}

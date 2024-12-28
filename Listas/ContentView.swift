//
//  ContentView.swift
//  Listas
//
//  Created by Andres David Cardenas Ramirez on 2/12/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        List {
//            ForEach(1...5, id: \.self) {
//                    Text("Elemento \($0)")
//                
//            }
        List(1...5, id: \.self) { idx in
            Text("Elemento \(idx)")
        
        }
    }
}

#Preview {
    ContentView()
}

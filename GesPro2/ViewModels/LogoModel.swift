//
//  LoginModel.swift
//  GesPro2
//
//  Created by daniel ortiz millan on 05/06/24.
//

import Foundation
import SwiftUI


// <<<<< LOGO ESTATITO >>>>>

struct LogoFondoView: View {
    var body: some View {
        VStack {
            // Simbolizando barras de progreso
            HStack(spacing: 10) {
                Rectangle()
                    .fill(Color.cyan)
                    .frame(width: 20, height: 60) // Altura fija
                    .shadow(color: Color.black.opacity(0.5), radius: 5, x: 5, y: 5)
                
                Rectangle()
                    .fill(Color.blue)
                    .frame(width: 20, height: 80) // Altura fija
                    .shadow(color: Color.black.opacity(0.5), radius: 5, x: 5, y: 5)
                
                Rectangle()
                    .fill(Color.cyan)
                    .frame(width: 20, height: 40) // Altura fija
                    .shadow(color: Color.black.opacity(0.5), radius: 5, x: 5, y: 5)
                
                Rectangle()
                    .fill(Color.blue)
                    .frame(width: 20, height: 70) // Altura fija
                    .shadow(color: Color.black.opacity(0.5), radius: 5, x: 5, y: 5)
            }
            .padding(.bottom, 10)
            
            // Nombre de la aplicación con color difuminado
            Text("Ges Pro")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.clear) // Hace el texto transparente
                .background(
                    
                    LinearGradient(
                        gradient: Gradient(colors: [Color.blue, Color.cyan]), // Colores del gradiente
                        startPoint: .leading,
                        endPoint: .trailing
                        
                    )
                )
                .mask(Text("Ges Pro")
                    .font(.largeTitle)
                    .fontWeight(.bold))
        }
    }
}



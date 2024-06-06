//
//  MainScreenView.swift
//  GesPro2
//
//  Created by daniel ortiz millan on 03/06/24.
//

import SwiftUI

struct MainScreenView: View {
    @State private var selection = 0
    
    
    init() {
            // Cambiar la apariencia de la barra de pestañas
            UITabBar.appearance().backgroundColor = UIColor.white
        }
    
    var body: some View {
        
        TabView {
                    ZStack {
//                         Fondo difuminado
//                        LinearGradient(gradient: Gradient(colors: [Color.gray.opacity(0.2), Color.black.opacity(0.9)]), startPoint: .top, endPoint: .bottom)
//                            .edgesIgnoringSafeArea(.all)
                        
                        VStack {
                            HStack {
                                Text("Proyectos")
                                    .font(.system(size: 35))
                                    .fontWeight(.bold)
                                    .foregroundColor(.black)
                            }
                        }
                        // Manda el titulo hasta arriba
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
                    }
            
                    .tabItem {
                        Label("Home", systemImage: "house")
                    }
                    
            NewProjectView()
                           .tabItem {
                               Label("Agregar", systemImage: "note.text.badge.plus")
                           }
                           .tag(1)
                    
                    Text("Tercera Pantalla")
                        .tabItem {
                            Label("perfil", systemImage: "person")
                        }
                }
       
            
            }
        }

#Preview {
    MainScreenView()
}

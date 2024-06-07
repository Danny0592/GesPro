//
//  PasswordView.swift
//  GesPro2
//
//  Created by daniel ortiz millan on 06/06/24.
//

import SwiftUI

struct PasswordView: View {
    @State private var email: String = ""
    
    var body: some View {
        ZStack {
            VStack {
                Text("Recuperar Contraseña")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.bottom, 10)
                
                VStack {
                    Spacer()
                    VStack(spacing: 20) {
                        TextField("Email", text: $email)
                            .padding()
                            .background(Color(.systemGray6))
                            .cornerRadius(10)
                            .padding(.horizontal, 40)
                        
                        Button(action: {
                            // Acción para enviar el correo de recuperación
                        }) {
                            Text("Enviar")
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(Color.blue)
                                .cornerRadius(10)
                                .padding(.horizontal, 40)
                        }
                    }
                    Spacer()
                    LogoFondoView()
                        .padding(.bottom) // Ajusta el padding según sea necesario
                }
            }
        }
    }
}


struct ContentView2: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: LoginView()) {
                    Text("Iniciar Sesión")
                }
                NavigationLink(destination: RegisterView()) {
                    Text("Registrarse")
                }
                NavigationLink(destination: PasswordView()) {
                    Text("Recuperar Contraseña")
                }
            }
        }
    }
}




#Preview {
    PasswordView()
}

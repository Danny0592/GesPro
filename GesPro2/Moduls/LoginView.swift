//
//  LoginView.swift
//  GesPro2
//
//  Created by daniel ortiz millan on 05/06/24.
//

import SwiftUI

struct LoginView: View {
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var isRegistering = false // Estado para controlar la navegación
    @State private var isPasswordVisible: Bool = false
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    Text("¡Bienvenido!")
                        .font(.title)
                        .fontWeight(.bold)
                        .padding(.bottom, 10)
                    
                    VStack {
                        Spacer()
                        VStack(spacing: 20) {
                            TextField("Usuario", text: $username)
                                .padding()
                                .background(Color(.systemGray6))
                                .cornerRadius(10)
                                .padding(.horizontal, 40)
                            
                            ZStack(alignment: .trailing) {
                                Group {
                                    if isPasswordVisible {
                                        TextField("Contraseña", text: $password)
                                    } else {
                                        SecureField("Contraseña", text: $password)
                                    }
                                }
                                .padding()
                                .background(Color(.systemGray6))
                                .cornerRadius(10)
                                .padding(.horizontal, 40)
                                
                                Button(action: {
                                    isPasswordVisible.toggle()
                                }) {
                                    Image(systemName: isPasswordVisible ? "eye.slash.fill" : "eye.fill")
                                        .foregroundColor(.gray)
                                        .padding(.trailing, 50)
                                }
                            }
                            
                            Button(action: {
                                // Acción para iniciar sesión
                            }) {
                                Text("Iniciar Sesión")
                                    .foregroundColor(.white)
                                    .frame(maxWidth: .infinity)
                                    .padding()
                                    .background(Color.blue)
                                    .cornerRadius(10)
                                    .padding(.horizontal, 40)
                            }
                            
                            NavigationLink(destination: RegisterView(), isActive: $isRegistering) {
                                EmptyView()
                            }
                            
                            Button(action: {
                                isRegistering = true
                            }) {
                                Text("Registrarse")
                                    .foregroundColor(.white)
                                    .frame(maxWidth: .infinity)
                                    .padding()
                                    .background(Color.green)
                                    .cornerRadius(10)
                                    .padding(.horizontal, 40)
                            }
                            
                            Button(action: {
                                // Acción para recuperar contraseña
                            }) {
                                Text("Recuperar Contraseña")
                                    .foregroundColor(.blue)
                                    .frame(maxWidth: .infinity)
                                    .padding()
                                    .background(Color.white)
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
}

#Preview {
    LoginView()
}







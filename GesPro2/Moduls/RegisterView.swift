//
//  RegisterView.swift
//  GesPro2
//
//  Created by daniel ortiz millan on 05/06/24.
//

import SwiftUI

struct RegisterView: View {
    @State private var username: String = ""
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var confirmPassword: String = ""
    @State private var isPasswordVisible: Bool = false
    @State private var isConfirmPasswordVisible: Bool = false
    
    var body: some View {
        ZStack {
            VStack {
                            //titulo
                Text("¡Regístrate!")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.bottom, 10)
                
                            //
                VStack {
                    Spacer()
                    VStack(spacing: 20) {
                        TextField("Usuario", text: $username)
                            .padding()
                            .background(Color(.systemGray6))
                            .cornerRadius(10)
                            .padding(.horizontal, 40)
                        
                        TextField("Email", text: $email)
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
                        
                        ZStack(alignment: .trailing) {
                            Group {
                                if isConfirmPasswordVisible {
                                    TextField("Confirmar Contraseña", text: $confirmPassword)
                                } else {
                                    SecureField("Confirmar Contraseña", text: $confirmPassword)
                                }
                            }
                            .padding()
                            .background(Color(.systemGray6))
                            .cornerRadius(10)
                            .padding(.horizontal, 40)
                            
                            Button(action: {
                                isConfirmPasswordVisible.toggle()
                            }) {
                                Image(systemName: isConfirmPasswordVisible ? "eye.slash.fill" : "eye.fill")
                                    .foregroundColor(.gray)
                                    .padding(.trailing, 50)
                            }
                        }
                        
                        
                        // Acción para registrarse
                        Button(action: {
                            
                        }) {
                            Text("Registrarse")
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(Color.green)
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



#Preview {
    RegisterView()
}


//import SwiftUI
//
//struct RegisterView: View {
//    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//
//    }
//}
//
//#Preview {
//    RegisterView()
//}

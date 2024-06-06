//
//  SplashView.swift
//  GesPro2
//
//  Created by daniel ortiz millan on 03/06/24.
//

import SwiftUI

struct SplashView: View {
    @State private var animate = false
    @State private var showSplashScreen = false
    var body: some View {
        if showSplashScreen {
            ContentView()
        } else {
            VStack {
                HStack(spacing: 10) {
                    
                    Rectangle()
                        .fill(Color.cyan)
                        .frame(width: 20, height: animate ? 100 : 60)
                        .animation(Animation.easeInOut(duration: 1).repeatForever(autoreverses: true))
                        .shadow(color: Color.black.opacity(0.5), radius: 5, x: 5, y: 5)
                    
                    Rectangle()
                        .fill(Color.blue)
                        .frame(width: 20, height: animate ? 120 : 80)
                        .animation(Animation.easeInOut(duration: 1).repeatForever(autoreverses: true).delay(0.2))
                        .shadow(color: Color.black.opacity(0.5), radius: 5, x: 5, y: 5)
                    
                    Rectangle()
                        .fill(Color.cyan)
                        .frame(width: 20, height: animate ? 110 : 40)
                        .animation(Animation.easeInOut(duration: 1).repeatForever(autoreverses: true).delay(0.4))
                        .shadow(color: Color.black.opacity(0.5), radius: 5, x: 5, y: 5)
                    
                    Rectangle()
                        .fill(Color.blue)
                        .frame(width: 20, height: animate ? 115 : 70)
                        .animation(Animation.easeInOut(duration: 1).repeatForever(autoreverses: true).delay(0.6))
                        .shadow(color: Color.black.opacity(0.5), radius: 5, x: 5, y: 5)
                }
                .padding(.bottom, 10)
                .onAppear {
                    animate = true
                }
                
                Text("Ges Pro")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.clear)
                    .background(
                        LinearGradient(
                            gradient: Gradient(colors: [Color.blue, Color.cyan]),
                            startPoint: .leading,
                            endPoint: .trailing
                        )
                    )
                    .mask(Text("Ges Pro")
                        .font(.largeTitle)
                        .fontWeight(.bold))
            }.onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
                    withAnimation {
                        self.showSplashScreen = true
                    }
                }
            }
        }
    }
}

//struct ContentView1: View {
////    @State private var showSplashScreen = true
//    
//    var body: some View {
//        ZStack {
////            if showSplashScreen {
//                SplashView()
//                    .onAppear {
//                        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
//                            withAnimation {
//                                self.showSplashScreen = false
//                            }
//                        }
//                    }
//            }
//        }
//    }
//}

#Preview {
    SplashView()
}

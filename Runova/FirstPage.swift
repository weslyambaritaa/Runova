import SwiftUI

struct RunovaHomeView: View {
    @State private var isRunning = false
    
    var body: some View {
        VStack(spacing: 35) {
            Spacer()
            
            // Teks RUNOVA
            Text("RUNOVA")
                .font(.custom("Copperplate", size: 65))
                .fontWeight(.bold)
                .foregroundStyle(.fontBlue)
            
            // Gambar pelari dengan animasi "lari"
            Image("runnerBlue")
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 300)
                .offset(x: isRunning ? -0.2 : 0.2)
                .animation(
                    .easeInOut(duration: 0.3)
                        .repeatForever(autoreverses: true),
                    value: isRunning
                )
            
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.white)
        .ignoresSafeArea()
        .onAppear {
            isRunning = true
        }
    }
}

#Preview {
    RunovaHomeView()
}
//
//  FirstPage.swift
//  Runova
//
//  Created by Foundation-014 on 04/07/25.
//


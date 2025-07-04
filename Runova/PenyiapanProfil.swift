import SwiftUI



struct PenyiapanProfil: View {
    var body: some View {
        
        NavigationView {
            
            ZStack {
                Color.white
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    Spacer()
                    
                    Text("Penyiapan Profil Anda")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                        .padding(.bottom, 20)
                    
                    Text("""
Untuk membantu kamu mencapai target badan ideal, kami akan mulai dengan mendata nama, usia, tinggi dan berat badan kamu.
""")
                    .foregroundColor(.black)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
                    
                    Spacer()
                    
                    NavigationLink(destination: ContentView()) {
                        Text("Continue")
                            .frame(maxWidth: .infinity)
                            .font(.title3)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.blue)
                            .cornerRadius(20)
                            .padding(.horizontal, 20)
                    }
                }
                .padding()
            }
        }
    }
}

struct PenyiapanProfil_Previews: PreviewProvider {
    static var previews: some View {
        PenyiapanProfil()
    }
}

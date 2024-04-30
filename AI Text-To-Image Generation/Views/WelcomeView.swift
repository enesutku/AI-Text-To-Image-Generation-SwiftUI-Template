// Created by Enes UTKU

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                Text("Start Creating Your Own Art")
                    .font(.system(size: 64, weight: .black))
                    .foregroundStyle(.white)
                Spacer()
                NavigationLink {
                    ContentView()
                } label: {
                    Text("Generate Image")
                    Image(systemName: "sparkle")
                }
                .frame(maxWidth: .infinity)
                .frame(height: 60)
                .background{
                    LinearGradient(colors: [.blue, .purple, .pink, .orange], startPoint: .topLeading, endPoint: .bottomTrailing)
                }
                .foregroundStyle(.white)
                .fontWeight(.semibold)
                .clipShape(Capsule())
                .padding()
            }
            .background {
                Image("welcome")
                    .overlay {
                        Rectangle().foregroundStyle(.black).opacity(0.5)
                    }
            }
        }
    }
}

#Preview {
    WelcomeView()
        .preferredColorScheme(.dark)
}

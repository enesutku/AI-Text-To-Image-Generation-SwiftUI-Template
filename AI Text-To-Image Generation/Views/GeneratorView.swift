// Created by Enes UTKU

import SwiftUI

struct GeneratorView: View {
    
    
    var body: some View {
        NavigationStack {
            VStack (alignment: .leading, spacing: 20) {
                Image(systemName: "arrow.left")
                    .fontWeight(.semibold)
                    .frame(width: 60, height: 60)
                    .background(.gray.opacity(0.3))
                    .clipShape(Circle())
                
                Text("Choose a style of a picture")
                    .font(.system(size: 32, weight: .black))
                AsyncImage(url: URL(string: "")){ image in
                    image.resizable()
                        .scaledToFill()
                } placeholder: {
                  ProgressView()
                        .tint(.white)
                }
                .frame(width: 340, height: 400)
                .clipShape(.rect(cornerRadius: 20))
                
                Spacer()
                NavigationLink {
                    ContentView()
                } label: {
                    HStack {
                        Text("Generate Again")
                        Image(systemName: "sparkles")
                    }
                            .frame(maxWidth: .infinity)
                            .frame(height: 60)
                            .background{
                                LinearGradient(colors: [.blue, .purple, .pink, .orange], startPoint: .topLeading, endPoint: .bottomTrailing)
                            }
                            .foregroundStyle(.white)
                            .fontWeight(.semibold)
                            .clipShape(Capsule())
                }
                .padding()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(.black)
                .foregroundStyle(.white)
                }
            .padding()
        }
        .toolbar(.hidden)
    }
}

#Preview {
    GeneratorView()
}

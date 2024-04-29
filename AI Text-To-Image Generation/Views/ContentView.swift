// Created by Enes UTKU

import SwiftUI

struct ContentView: View {
    
    @State var selectedStyle = ImageStyle.allCases[0]
    @State var promptText: String = ""
    
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
                    .foregroundStyle(.white)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack (spacing: 10) {
                        ForEach(ImageStyle.allCases, id: \.self) {
                            styles in
                            Button(action: {
                                selectedStyle = styles
                            }, label: {
                                Image(styles.rawValue)
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 150, height: 200)
                                    .overlay {
                                        Rectangle()
                                            .foregroundStyle(.black).opacity(0.1)
                                    }
                                    .clipShape(.rect(cornerRadius: 15))
                            })
                            .overlay {
                                RoundedRectangle(cornerRadius: 20).stroke(LinearGradient(colors: [.blue, .purple, .pink, .orange], startPoint: .topLeading, endPoint: .bottomTrailing), lineWidth: styles == selectedStyle ? 3 : 0)
                            }
                        }
                    }
                }
                
                TextEditor(text: $promptText)
                    .scrollContentBackground(.hidden)
                    .padding()
                    .background(.gray.opacity(0.2))
                    .clipShape(.rect(cornerRadius: 20))
                    .foregroundStyle(.white)
                    .tint(.black)
                
                NavigationLink {
                    GeneratorView()
                } label: {
                    Text("Generate Image")
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

            }
            .padding()
            .toolbar(.hidden)
    }
}

#Preview {
    ContentView()
        .preferredColorScheme(.dark)
}

//
//  superHeroView.swift
//  super_hero_app
//
//  Created by Mohamed Abd Elhakam on 21/12/2023.
//

import SwiftUI

struct superHeroView: View {
   
    var superH : Superhero
    @State var isAlertPresented : Bool = false
    @State var isScaled : Bool = false
    @State var isSliding : Bool = false
    var haptic = UIImpactFeedbackGenerator(style: .heavy)
    var body: some View {
        
        ZStack
        {
            Image(superH.image)
                .resizable()
                .scaledToFill()
                .scaleEffect(isScaled ? 1 : 0.7)
                .animation(.easeInOut(duration: 1), value: isScaled)
            VStack
            {
                Text(superH.title)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundStyle(.white)
                Button {
                    isAlertPresented.toggle()
                    haptic.impactOccurred()
                    Play(name: "chimeup", type: "mp3")
                } label: {
                    HStack
                    {
                        Text("Start")
                        Image(systemName: "arrow.right.circle")
                        
                    }//: hstak
                    .padding()
                    .font(.title2)
                    .background(LinearGradient(colors: superH.gradientColors, startPoint: .bottomTrailing, endPoint: .topLeading))
                    .clipShape(.capsule)
                    .shadow(radius: 10)
                    .alert(isPresented: $isAlertPresented){
                        Alert(title: Text("about more from \(superH.title)"), message: Text(superH.message), dismissButton: .default(Text("ok")))
                    }
                }
                
            }//:vstack
            .offset(y: isSliding ? 150 : 300)
            .animation(.easeInOut(duration: 1), value: isSliding)
            
            
        }//: zstack
        
        .frame(width: 360, height: 620, alignment: .center)
        .background(LinearGradient(colors: superH.gradientColors, startPoint: .topLeading, endPoint: .bottomTrailing))
        .cornerRadius(20)
        .shadow(color: .black, radius: 2, x: 2, y: 2)
        .onAppear(perform: {
            isScaled = true
            isSliding = true
        })
        
    }
}

#Preview {
    superHeroView(superH: superHeroData[1])
}

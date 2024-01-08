//
//  ContentView.swift
//  super_hero_app
//
//  Created by Mohamed Abd Elhakam on 21/12/2023.
//

import SwiftUI

struct ContentView: View {
    var superHeros : [Superhero] = superHeroData
    var body: some View {
        
        ScrollView(.horizontal)
        {
            HStack(spacing : 20)
            {
                ForEach(superHeros) { item in
                    superHeroView(superH: item)
                }//:forEach
                                
            }//:hStack
            .padding()
            
            
            
        }//:scrollView
        .scrollIndicators(.hidden)
        .scrollTargetLayout(isEnabled: true)
        
    }
}

#Preview {
    ContentView()
}

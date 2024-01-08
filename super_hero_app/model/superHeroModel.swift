//
//  superHeroModel.swift
//  super_hero_app
//
//  Created by Mohamed Abd Elhakam on 21/12/2023.
//

import Foundation
import SwiftUI

struct Superhero : Identifiable {
    var id = UUID()
    var title : String
    var image : String
    var message : String
    var gradientColors : [Color]
}

let superHeroData : [Superhero] = [
    Superhero(title: "Hulk",
              image: "hulk",
              message: "Hulk is very green",
              gradientColors:[Color("ColorHulk01"), Color("ColorHulk02")]),

    Superhero(title: "Ironman",
              image: "ironman",
              message: "Ironman can fly",
              gradientColors: [Color("ColorIronman01"),Color("ColorIronman02")]),

    Superhero(title: "Spiderman",
              image: "spiderman",
              message: "Spiderman is not a real spider",
              gradientColors: [Color("ColorSpiderman01"),Color("ColorSpiderman02")]),

    Superhero(title: "Superman",
              image: "superman",
              message: "Superman is from another planet",
              gradientColors: [Color("ColorSuperman01"),Color("ColoerSuperman02")]),

    Superhero(title: "Wolverine",
              image: "wolverine",
              message: "Wolverine has knives in his hand",
              gradientColors: [Color("ColorWolverine01"),Color("ColorWolverine02")])
]

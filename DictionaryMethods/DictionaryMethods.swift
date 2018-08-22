//
//  DictionaryMethods.swift
//  DictionaryMethods
//
//  Created by Jim Campagno on 12/28/16.
//  Copyright © 2016 Jim Campagno. All rights reserved.
//

import Foundation

class DictionaryMethods {
    
    // Questions #1, #2, #3, #6 and #7
    var starWarsHeroes: [String] = ["Luke Skywalker", "Princess Leia", "Han Solo", "Rey"]
    var starWarsVillains: [String] = ["Darth Vader", "Emperor Palpatine"]
    var starWarsDroids: [String] = ["R2-D2", "C-3P0", "IG-88", "BB-8"]
    var starWarsGangsters: [String] = ["Watto", "Jabba the Hutt"]
    var starWarsCharacters: [String: [String]] = [:]

    
    // Question #4
    func addKyloRen() {
        starWarsVillains.append("Kylo Ren")
    }
    
    
    
    // Question #5
    func remove(droid: String) -> Bool{
        for (index, currentDroid) in  starWarsDroids.enumerated() {
            if currentDroid == droid {
                starWarsDroids.remove(at: index)
                return true
            }
        }
        return false
    }
    
    
    
    // Question #6
    func createStarWarsCharacters() {
        starWarsCharacters["Heroes"] = starWarsHeroes
        starWarsCharacters["Villains"] = starWarsVillains
        starWarsCharacters["Droids"] = starWarsDroids
    }
   
    
    
    
    // Question #7
    func createStarWarsGangsters() {
        starWarsCharacters["Gangsters"] = starWarsGangsters
    }
    
    
    
    // Question #8
    func description(characters: [String: [String]]) -> String{
        var characterDescriptions = "--Star Wars Characters--"
        for (group, characters) in starWarsCharacters {
            characterDescriptions = "\(characterDescriptions)\n\(group.uppercased())"
            for (index, character) in characters.enumerated() {
                characterDescriptions = "\(characterDescriptions)\n\(index + 1). \(character)"
            }
        }
        return characterDescriptions
    }
    
    
    
    // Question #9
    func addHearts() {
        for (group, characters) in starWarsCharacters {
            var copy = characters
            for (index, character) in copy.enumerated() {
                if character.contains("o") {
                    let newCharacter = character.replacingOccurrences(of: "o", with: "❤️")
                    copy[index] = newCharacter
                }
            }
            starWarsCharacters[group] = copy
        }
    }
    
    
    
}

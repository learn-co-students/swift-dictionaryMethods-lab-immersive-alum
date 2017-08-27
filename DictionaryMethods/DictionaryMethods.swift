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
    var starWarsHeroes=["Luke Skywalker","Princess Leia","Han Solo","Rey"]
    
    var starWarsVillains=["Darth Vader","Emperor Palpatine"]
    
    var starWarsDroids = ["R2-D2","C-3P0","IG-88","BB-8"]
    
    var starWarsCharacters:[String:[String]]=[:]
    
    func createStarWarsCharacters(){
        starWarsCharacters["Heroes"]=starWarsHeroes
        starWarsCharacters["Villains"]=starWarsVillains
        starWarsCharacters["Droids"]=starWarsDroids
    }
    
    // Question #4
    func addKyloRen(){
        starWarsVillains.append("Kylo Ren")
    }
    
    
    
    // Question #5
  
    func remove(droid:String)->Bool{
        if let ind = starWarsDroids.index(of:droid){
            starWarsDroids.remove(at:ind)
        return true}
        else{
            return false
        }
    }
    
    
    // Question #7
   
    var starWarsGangsters=["Watto","Jabba the Hutt"]
    
    func createStarWarsGangsters(){
        starWarsCharacters["Gangsters"]=starWarsGangsters
    }
    
    // Question #8
    func description(characters:[String:[String]])->String{
        var sentence = "--Star Wars Characters--"
        for (key,value) in characters{
            sentence+="\n\(key.uppercased())\n"
            for name in value{
                if let i = value.index(of:name){
                    sentence+="\(i+1). \(name)\n"
                }
            }
            
        }
        return sentence
    }
    
    
    
    // Question #9
    func addHearts(){
      var newNames:[String]=[]
        for (type,names) in starWarsCharacters{
          for name in names{
            newNames.append(name.replacingOccurrences(of: "o", with: "❤️"))
            }
            starWarsCharacters[type]=newNames
        }
    }
}

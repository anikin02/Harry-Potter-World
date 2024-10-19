//
//  CharactersViewModel.swift
//  Harry Potter World
//
//  Created by anikin02 on 19.10.2024.
//

import Foundation

class CharactersViewModel {
  var characters: [CharacterModel] = []
  
  init() {
    characters = getCharacters()
  }
  
  func getCharacters() -> [CharacterModel] {
    return [CharacterModel(name: "Harry Potter", house: "Gryffindor" ,urlImage: "testImage"), CharacterModel(name: "Harry Potter", house: "Gryffindor" ,urlImage: "testImage"), CharacterModel(name: "Harry Potter", house: "Gryffindor" ,urlImage: "testImage"), CharacterModel(name: "Harry Potter", house: "Gryffindor" ,urlImage: "testImage"), CharacterModel(name: "Harry Potter", house: "Gryffindor" ,urlImage: "testImage"), CharacterModel(name: "Harry Potter", house: "Gryffindor" ,urlImage: "testImage"), CharacterModel(name: "Harry Potter", house: "Gryffindor" ,urlImage: "testImage"), CharacterModel(name: "Harry Potter", house: "Gryffindor" ,urlImage: "testImage"), CharacterModel(name: "Harry Potter", house: "Gryffindor" ,urlImage: "testImage"), CharacterModel(name: "Harry Potter", house: "Gryffindor" ,urlImage: "testImage"), CharacterModel(name: "Harry Potter", house: "Gryffindor" ,urlImage: "testImage"), CharacterModel(name: "Harry Potter", house: "Gryffindor" ,urlImage: "testImage"), CharacterModel(name: "Harry Potter", house: "Gryffindor" ,urlImage: "testImage"), CharacterModel(name: "Harry Potter", house: "Gryffindor" ,urlImage: "testImage"), CharacterModel(name: "Harry Potter", house: "Gryffindor" ,urlImage: "testImage"), CharacterModel(name: "Harry Potter", house: "Gryffindor" ,urlImage: "testImage"), CharacterModel(name: "Harry Potter", house: "Gryffindor" ,urlImage: "testImage"), CharacterModel(name: "Harry Potter", house: "Gryffindor" ,urlImage: "testImage"), CharacterModel(name: "Harry Potter", house: "Gryffindor" ,urlImage: "testImage"), CharacterModel(name: "Harry Potter", house: "Gryffindor" ,urlImage: "testImage"), CharacterModel(name: "Harry Potter", house: "Gryffindor" ,urlImage: "testImage"), CharacterModel(name: "Harry Potter", house: "Gryffindor" ,urlImage: "testImage"), CharacterModel(name: "Harry Potter", house: "Gryffindor" ,urlImage: "testImage"), CharacterModel(name: "Harry Potter", house: "Gryffindor" ,urlImage: "testImage"), CharacterModel(name: "Harry Potter", house: "Gryffindor" ,urlImage: "testImage"), CharacterModel(name: "Harry Potter", house: "Gryffindor" ,urlImage: "testImage") ]
  }
}

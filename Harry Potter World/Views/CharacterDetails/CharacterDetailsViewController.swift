//
//  CharacterDetailsViewController.swift
//  Harry Potter World
//
//  Created by anikin02 on 20.10.2024.
//

import UIKit

class CharacterDetailsViewController: UIViewController {
  
  let character: CharacterModel
  
  init(character: CharacterModel) {
    self.character = character
    super.init(nibName: nil, bundle: nil)
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
}

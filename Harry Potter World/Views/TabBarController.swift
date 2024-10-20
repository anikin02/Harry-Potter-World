//
//  TabBarController.swift
//  Harry Potter World
//
//  Created by anikin02 on 19.10.2024.
//

import UIKit

class TabBarController: UITabBarController {
  override func viewDidLoad() {
    super.viewDidLoad()
    
    generateTabBar()
    changeColor(tabBarController: self, colorBG: .white, colorTint: .systemPink)
  }
  
  private func generateTabBar() {
    viewControllers = [
      generateVC(
        viewContoller: CharactersViewController(),
        title: "All Characters",
        image: UIImage(systemName: "person.2.fill")
      ),
      generateVC(
        viewContoller: CharactersViewController(),
        title: "Hogwarts Students",
        image: UIImage(systemName: "graduationcap.fill")
      ),
      generateVC(
        viewContoller: CharactersViewController(),
        title: "Hogwarts Staff",
        image: UIImage(systemName: "text.book.closed.fill")
      ),
      generateVC(
        viewContoller: SpellsViewController(),
        title: "All Spells",
        image: UIImage(systemName: "wand.and.stars")
      )
    ]
  }
  
  private func generateVC(viewContoller: UIViewController, title: String, image: UIImage?) -> UIViewController {
    viewContoller.tabBarItem.title = title
    viewContoller.tabBarItem.image = image
    
    return viewContoller
  }
  
  func changeColor(tabBarController: UITabBarController?, colorBG: UIColor, colorTint: UIColor) {
    tabBar.backgroundColor = colorBG
    tabBar.tintColor = colorTint
  }
}

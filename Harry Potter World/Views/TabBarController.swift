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
        title: "Characters",
        image: UIImage(systemName: "person.2")
      ),
      generateVC(
        viewContoller: CharactersViewController(),
        title: "Characters",
        image: UIImage(systemName: "person.2")
      ),
      generateVC(
        viewContoller: CharactersViewController(),
        title: "Characters",
        image: UIImage(systemName: "person.2")
      ),
      generateVC(
        viewContoller: CharactersViewController(),
        title: "Characters",
        image: UIImage(systemName: "person.2")
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

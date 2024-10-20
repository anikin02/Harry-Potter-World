//
//  CharactersViewController.swift
//  Harry Potter World
//
//  Created by anikin02 on 19.10.2024.
//

import UIKit

class CharactersViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
  
  private var collectionView: UICollectionView!
  
  var viewModel: CharactersViewModel
  
  override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
    
    viewModel = CharactersViewModel()
    super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .white
    
    generateCollectionView()
  }
  
  private func generateCollectionView() {
    let layout = UICollectionViewFlowLayout()
    layout.scrollDirection = .vertical
    
    collectionView = UICollectionView(frame: self.view.bounds, collectionViewLayout: layout)
    collectionView.delegate = self
    collectionView.dataSource = self
    
    collectionView.register(CharacterViewCell.self, forCellWithReuseIdentifier: "characterCell")
    
    view.addSubview(collectionView)
  }
  
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return viewModel.characters.count
  }
  
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "characterCell", for: indexPath) as! CharacterViewCell
    
    cell.imageView.image = UIImage(named: viewModel.characters[indexPath.item].urlImage)
    cell.nameLabel.text = viewModel.characters[indexPath.item].name
    cell.houseLabel.text = viewModel.characters[indexPath.item].house
    
    return cell
  }
  
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    let padding: CGFloat = 20
    let width = collectionView.frame.width - padding
    let height: CGFloat = 227
    
    return CGSize(width: width, height: height)
  }
}

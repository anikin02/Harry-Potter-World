//
//  CharacterViewCell.swift
//  Harry Potter World
//
//  Created by anikin02 on 19.10.2024.
//

import UIKit

class CharacterViewCell: UICollectionViewCell {
  let imageView: UIImageView = {
    let imgView = UIImageView()
    imgView.contentMode = .scaleAspectFit
    imgView.translatesAutoresizingMaskIntoConstraints = false
    return imgView
  }()
  
  let nameLabel: UILabel = {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    label.font = UIFont.systemFont(ofSize: 22, weight: .black)
    label.textAlignment = .left
    label.numberOfLines = 1
    return label
  }()
  
  let houseLabel: UILabel = {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    label.font = UIFont.systemFont(ofSize: 20, weight: .bold)
    label.textAlignment = .left
    label.numberOfLines = 1
    return label
  }()
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    generateCell()
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  func generateCell() {
    generateImage()
    generateLabels()
  }
  
  func generateImage() {
    contentView.addSubview(imageView)
    NSLayoutConstraint.activate([
      imageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 0),
      imageView.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
      imageView.widthAnchor.constraint(equalToConstant: 163),
      imageView.heightAnchor.constraint(equalToConstant: 227),
      ])
  }
  func generateLabels() {
    contentView.addSubview(nameLabel)
    contentView.addSubview(houseLabel)
    
    NSLayoutConstraint.activate([
      // Констрейнты для nameLabel
      nameLabel.leadingAnchor.constraint(equalTo: imageView.trailingAnchor, constant: 10),
      nameLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
      nameLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),
      
      // Констрейнты для houseLabel
      houseLabel.leadingAnchor.constraint(equalTo: nameLabel.leadingAnchor),
      houseLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor),
      houseLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10)
    ])
  }
}

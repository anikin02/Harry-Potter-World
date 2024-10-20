//
//  SpellsViewController.swift
//  Harry Potter World
//
//  Created by anikin02 on 20.10.2024.
//

import UIKit

class SpellsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
  
  let tableView = UITableView()
  let spellsViewModel = SpellsViewModel()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .white
    generateTableView()
  }
  
  func generateTableView() {
    tableView.delegate = self
    tableView.dataSource = self
    tableView.showsVerticalScrollIndicator = false
    tableView.translatesAutoresizingMaskIntoConstraints = false
    view.addSubview(tableView)
    
    NSLayoutConstraint.activate([
      tableView.topAnchor.constraint(equalTo: view.topAnchor),
      tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
      tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
      tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
    ])
  }
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return spellsViewModel.spells.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = UITableViewCell(style: .subtitle, reuseIdentifier: nil)
    
    var content = cell.defaultContentConfiguration()
    content.text = spellsViewModel.spells[indexPath.row].name
    content.textProperties.font = UIFont.boldSystemFont(ofSize: 22)
    content.secondaryText = spellsViewModel.spells[indexPath.row].description
    content.secondaryTextProperties.font = UIFont.systemFont(ofSize: 20)
    cell.contentConfiguration = content
    
    return cell
  }
  
}

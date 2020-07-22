//
//  InTeamPlayersCollectionViewCell.swift
//  200221_Hooper
//
//  Created by Demian on 2020/03/11.
//  Copyright © 2020 Demian. All rights reserved.
//

import UIKit

class InTeamPlayersCollectionViewCell: UICollectionViewCell {
  let playerTableView = UITableView()
  var selectTeamImageView = UIImageView()
  
  var serviceManager = ServiceManager.shared
  
  var players = [Players]()
  var selectedTeamPlayer = [String]()
  var selectedStatus = [Double]()
  
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    contentView.backgroundColor = .clear
    playerTableView.dataSource = self
    playerTableView.delegate = self
//    print(players)
//    print(selectedTeamPlayer)
    updateConstraints()
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  override func updateConstraints() {
    super.updateConstraints()
    contentView.addSubview(playerTableView)
    contentView.addSubview(selectTeamImageView)
    
    playerTableView.translatesAutoresizingMaskIntoConstraints = false
    selectTeamImageView.translatesAutoresizingMaskIntoConstraints = false
    NSLayoutConstraint.activate([
      playerTableView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
      playerTableView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
      playerTableView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
      playerTableView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
      
     selectTeamImageView.topAnchor.constraint(equalTo: contentView.topAnchor),
     selectTeamImageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
     selectTeamImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
     selectTeamImageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
      
    ])
    playerTableView.backgroundColor = .white
    playerTableView.rowHeight = 50
    playerTableView.register(PlayersTableViewCell.self, forCellReuseIdentifier: "PlayersCell")
    
    players = serviceManager.nbaPlayersData
//    contentView.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
//    contentView.layer.borderWidth = 1
//    let tempWidth = contentView.frame.size.width * CGFloat(0.85)
//    let tempHeight = contentView.frame.size.height * CGFloat(0.85)
//    let tempSize: CGSize = .init(width: tempWidth, height: tempHeight)
//    selectTeamImageView.frame.size = tempSize
    selectTeamImageView.contentMode = .scaleAspectFit
    
  }
  
  // MARK: Interface
  
  func setSelectTeamPlayer(players: [Players]) {
//    print("Through Players :", players)
    self.selectedTeamPlayer.removeAll()
    players.forEach {
      if !self.selectedTeamPlayer.contains($0.fullName) {
        self.selectedTeamPlayer.append($0.fullName)
      }
    }
    print("Un-Duplicated Players :", self.selectedTeamPlayer)
    self.playerTableView.reloadData()
    self.selectedTeamPlayer.indices.forEach { _ in self.selectedStatus.append(0.0) }

  }
  
  func presentBackgroundImage(_ selectTeamImage: UIImage) {
    self.selectTeamImageView.alpha = 0.3
    self.selectTeamImageView.image = selectTeamImage
    self.playerTableView.reloadData()
  }
  
}

//MARK: TableView Data Source
extension InTeamPlayersCollectionViewCell: UITableViewDataSource {
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    let rows = self.selectedTeamPlayer.count
//    print("Number OF Rows In Section :", rows)
    return rows
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    guard let cell = tableView.dequeueReusableCell(withIdentifier: "PlayersCell", for: indexPath) as? PlayersTableViewCell else { fatalError() }
//    print(selectedTeamPlayer[indexPath.row])
//    print("TableView IndexPath :", indexPath)
    cell.playerName.text = selectedTeamPlayer[indexPath.row]
    cell.selectImage.alpha = CGFloat(selectedStatus[indexPath.row])
    return cell
  }
}

//MARK: TableView Delegate
extension InTeamPlayersCollectionViewCell: UITableViewDelegate {
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    guard let cell = tableView.cellForRow(at: indexPath) as? PlayersTableViewCell else { return }
    self.selectedStatus[indexPath.row] = 1.0
    selectAnimation(cell, indexPath)
  }
  
  func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
    guard let cell = tableView.cellForRow(at: indexPath) as? PlayersTableViewCell else { return }
    cell.selectImage.alpha = 0.0
    self.selectedStatus[indexPath.row] = 0.0
    cell.selectImage.transform = .identity
  }
  
  func selectAnimation(_ cell: PlayersTableViewCell, _ indexPath: IndexPath) {
    cell.selectImage.alpha = 0.0
    UIView.animate(withDuration: 0.3, animations: {
      cell.selectImage.alpha = 1.0
    })
    UIView.animate(withDuration: 0.15, animations: {
      cell.selectImage.transform = .init(translationX: self.contentView.frame.width * 0.475, y: 0)
    }, completion: { _ in
      print("completion")
    })
    self.selectedStatus.removeAll()
    self.selectedTeamPlayer.indices.forEach { _ in self.selectedStatus.append(0.0) }
  }
}

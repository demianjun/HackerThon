//
//  ViewController.swift
//  200221_Hooper
//
//  Created by Demian on 2020/02/21.
//  Copyright © 2020 Demian. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
  let partitionLine = UIView()
  
  private lazy var layout: UICollectionViewFlowLayout = {
    let layout = UICollectionViewFlowLayout()
       layout.minimumLineSpacing = 20 // default = 10
       layout.minimumInteritemSpacing = 10 // default = 10
       layout.scrollDirection = .horizontal
       layout.sectionInset = UIEdgeInsets(top: 5, left: 5, bottom: 0, right: 5)
    return layout
  }()
  private lazy var bottomLayout: UICollectionViewFlowLayout = {
    let bottomLayout = UICollectionViewFlowLayout()
       bottomLayout.minimumLineSpacing = 0 // default = 10
       bottomLayout.minimumInteritemSpacing = 0 // default = 10
       bottomLayout.scrollDirection = .horizontal
       bottomLayout.sectionInset = UIEdgeInsets(top: 0, left: 5, bottom: 5, right: 5)
    return bottomLayout
  }()
  
  lazy var collectionView = UICollectionView(frame: .zero, collectionViewLayout: self.layout)
  lazy var bottomCollectionView = UICollectionView(frame: .zero, collectionViewLayout: self.bottomLayout)
  
  var serviceManager = ServiceManager.shared
  
  var teams = [Teams]()
  var players = [Players]()
  var selectedTeamPlayer = [String]()
  var selectedStatus = [Double]()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    setupTopCollectionView()
    setupBottomCollectionView()
    view.backgroundColor = .white
    navigationItem.title = "NBA TEAMS"
    
  }
  
  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
    setupUI()
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
  }
  
  private func setupUI() {
    view.addSubview(partitionLine)
    partitionLine.translatesAutoresizingMaskIntoConstraints = false
    NSLayoutConstraint.activate([
      partitionLine.bottomAnchor.constraint(equalTo: collectionView.bottomAnchor),
      partitionLine.centerXAnchor.constraint(equalTo: collectionView.centerXAnchor),
      partitionLine.widthAnchor.constraint(equalTo: view.safeAreaLayoutGuide.widthAnchor, multiplier: 0.95),
      partitionLine.heightAnchor.constraint(equalToConstant: 0.5),
    ])
    partitionLine.backgroundColor = #colorLiteral(red: 0.2605174184, green: 0.2605243921, blue: 0.260520637, alpha: 1)
    partitionLine.layer.cornerRadius = 5
  }
  
  private func setupTopCollectionView() {
    teams = serviceManager.nbaTeamsData
    view.addSubview(collectionView)
    
    collectionView.backgroundColor = .white
    collectionView.dataSource = self
    collectionView.delegate = self
    collectionView.register(TeamsCollectionViewCell.self, forCellWithReuseIdentifier: "TeamsCell")
    
    collectionView.translatesAutoresizingMaskIntoConstraints = false
    NSLayoutConstraint.activate([
      collectionView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
      collectionView.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
      collectionView.widthAnchor.constraint(equalTo: view.safeAreaLayoutGuide.widthAnchor),
      collectionView.heightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.heightAnchor, multiplier: 0.2),
    ])
//    collectionView.backgroundColor = #colorLiteral(red: 0.2261817523, green: 0.6235294342, blue: 0.2757737365, alpha: 1)
  }
  private func setupBottomCollectionView() {
    players = serviceManager.nbaPlayersData
    view.addSubview(bottomCollectionView)
    
    bottomCollectionView.backgroundColor = .clear
    bottomCollectionView.dataSource = self
    bottomCollectionView.delegate = self
    bottomCollectionView.register(InTeamPlayersCollectionViewCell.self, forCellWithReuseIdentifier: "TeamPlayersCell")
    bottomCollectionView.isPagingEnabled = true
    
    bottomCollectionView.translatesAutoresizingMaskIntoConstraints = false
    NSLayoutConstraint.activate([
      bottomCollectionView.topAnchor.constraint(equalTo: collectionView.bottomAnchor, constant: 0),
      bottomCollectionView.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
      bottomCollectionView.widthAnchor.constraint(equalTo: view.safeAreaLayoutGuide.widthAnchor, multiplier: 1.0),
      bottomCollectionView.heightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.heightAnchor, multiplier: 0.8),
    ])
  }
}

//MARK: CollectionView Data Source
extension MainViewController: UICollectionViewDataSource {
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return teams.count
  }
  
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    if collectionView == self.collectionView {
      guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TeamsCell", for: indexPath) as? TeamsCollectionViewCell else { fatalError() }
      cell.backgroundColor = .clear
      cell.layer.shadowColor = #colorLiteral(red: 0.370555222, green: 0.3705646992, blue: 0.3705595732, alpha: 1)
      cell.layer.shadowOpacity = 5.0
      cell.layer.shadowRadius = 5.0
      cell.logoImage.image = nil
      
      cell.logoImage.image = ImageSingleton.shared.images[teams[indexPath.row].logo]
      
      return cell
    } else {
      guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TeamPlayersCell", for: indexPath) as? InTeamPlayersCollectionViewCell else { fatalError() }
      
      return cell
    }
  }
}
//MARK: CollectionView Delegate
extension MainViewController: UICollectionViewDelegate {
  func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
    let currentPage = Int(self.bottomCollectionView.contentOffset.x) / Int(self.view.frame.width)
    self.collectionView.selectItem(at: IndexPath(row: currentPage, section: 0), animated: true, scrollPosition: .centeredHorizontally)
    collectionView(self.bottomCollectionView, didSelectItemAt: IndexPath(row: currentPage, section: 0))
  }
 
  func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    if players.isEmpty == true {
      players = serviceManager.nbaPlayersData
    }
    navigationItem.title = teams[indexPath.row].fullName
    
    let cellOffsetFloat = view.frame.width * CGFloat(indexPath.row)
    self.bottomCollectionView.setContentOffset(CGPoint(x: cellOffsetFloat, y: 0), animated: true)
    
    guard let cell = self.bottomCollectionView.cellForItem(at: indexPath) as? InTeamPlayersCollectionViewCell else { return }
    let teamID = self.teams[indexPath.row].teamId
    let temp = self.players.filter { $0.teamId == teamID }
    dump(temp)
    cell.setSelectTeamPlayer(players: temp)
    self.players.removeAll()
    
    guard let selectTeamImage = ImageSingleton.shared.images[teams[indexPath.row].logo] else { fatalError() }
    cell.presentBackgroundImage(selectTeamImage)
    
  }
}

extension MainViewController: UICollectionViewDelegateFlowLayout {
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    if collectionView == self.collectionView {
      let top = CGSize(width: 100, height: 100)
      return top
    } else {
      let bottom = CGSize(width: view.frame.width, height: view.frame.height * 0.65)
      return bottom
    }
  }
}

//
//  RankViewController.swift
//  200131_SecondHackaThon
//
//  Created by Demian on 2020/02/17.
//  Copyright © 2020 Demian. All rights reserved.
//

import UIKit

class RankViewController: UIViewController {
  
  private let normalRank1Image = UIImageView()
  private let normalRank2Image = UIImageView()
  private let normalRank3Image = UIImageView()
  
  private let hardRank1Image = UIImageView()
  private let hardRank2Image = UIImageView()
  private let hardRank3Image = UIImageView()
  
  private let normalRankImageCover = UIImageView()
  private let hardRankImageCover = UIImageView()
  
  private let mainRankLabel = UILabel()
  private let normalRankLable = UILabel()
  private let hardRankLable = UILabel()
  
  private let normalRanking1 = UILabel()
  private let normalRanking2 = UILabel()
  private let normalRanking3 = UILabel()
  
  private let hardRanking1 = UILabel()
  private let hardRanking2 = UILabel()
  private let hardRanking3 = UILabel()
  
  private let Button10s = UIButton()
  private let Button60s = UIButton()
  private let Button120s = UIButton()
  
  private let backButton = UIButton()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = #colorLiteral(red: 0.921431005, green: 0.9214526415, blue: 0.9214410186, alpha: 1)
    let userLabelUI = [normalRanking1, normalRanking2, normalRanking3, hardRanking1, hardRanking2, hardRanking3]
    userLabelUI.forEach { view.addSubview($0) }
    setUI()
  }
  
  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
    let data = Gamedata()
    data.doArrayScore()
  }
  
  private func setUI() {
    
    let imageUI = [normalRank1Image, normalRank2Image, normalRank3Image,normalRankImageCover, hardRank1Image, hardRank2Image, hardRank3Image, hardRankImageCover]
    let labelUI = [mainRankLabel, normalRankLable, hardRankLable]
    let buttonUI = [Button10s, Button60s, Button120s, backButton]
    let userLabelUI = [normalRanking1, normalRanking2, normalRanking3, hardRanking1, hardRanking2, hardRanking3]
  
    imageUI.forEach { view.addSubview($0) }
    labelUI.forEach { view.addSubview($0) }
    buttonUI.forEach { view.addSubview($0)}
    
    imageUI.forEach { $0.translatesAutoresizingMaskIntoConstraints = false }
    labelUI.forEach { $0.translatesAutoresizingMaskIntoConstraints = false }
    userLabelUI.forEach { $0.translatesAutoresizingMaskIntoConstraints = false }
    buttonUI.forEach { $0.translatesAutoresizingMaskIntoConstraints = false }
    
    NSLayoutConstraint.activate([
      mainRankLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 25),
      mainRankLabel.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
      
      normalRankLable.topAnchor.constraint(equalTo: mainRankLabel.bottomAnchor, constant: 30),
      normalRankLable.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
      
      hardRankLable.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor, constant: 60),
      hardRankLable.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
      
      Button10s.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -5),
      Button10s.trailingAnchor.constraint(equalTo: Button60s.leadingAnchor, constant: 3),
      Button10s.widthAnchor.constraint(equalToConstant: view.bounds.width/4),
      Button10s.heightAnchor.constraint(equalToConstant: view.bounds.height*0.05),
      
      Button60s.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -5),
      Button60s.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
      Button60s.widthAnchor.constraint(equalToConstant: view.bounds.width/4),
      Button60s.heightAnchor.constraint(equalToConstant: view.bounds.height*0.05),
      
      Button120s.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -5),
      Button120s.leadingAnchor.constraint(equalTo: Button60s.trailingAnchor, constant: -3),
      Button120s.widthAnchor.constraint(equalToConstant: view.bounds.width/4),
      Button120s.heightAnchor.constraint(equalToConstant: view.bounds.height*0.05),
      
      
      normalRankImageCover.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor),
      normalRankImageCover.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
      normalRankImageCover.widthAnchor.constraint(equalToConstant: view.bounds.width/1.2),
      normalRankImageCover.heightAnchor.constraint(equalToConstant: view.bounds.height*0.25),
      
      
      normalRank1Image.bottomAnchor.constraint(equalTo: normalRankImageCover.topAnchor),
      normalRank1Image.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
      normalRank1Image.widthAnchor.constraint(equalToConstant: view.bounds.width*0.25),
      normalRank1Image.heightAnchor.constraint(equalToConstant: view.bounds.height*0.18),
      
      normalRank2Image.bottomAnchor.constraint(equalTo: normalRank1Image.bottomAnchor),
      normalRank2Image.trailingAnchor.constraint(equalTo: normalRank1Image.leadingAnchor, constant: -5),
      normalRank2Image.widthAnchor.constraint(equalToConstant: view.bounds.width*0.25),
      normalRank2Image.heightAnchor.constraint(equalToConstant: view.bounds.height*0.13),
      
      normalRank3Image.bottomAnchor.constraint(equalTo: normalRank1Image.bottomAnchor),
      normalRank3Image.leadingAnchor.constraint(equalTo: normalRank1Image.trailingAnchor, constant: 5),
      normalRank3Image.widthAnchor.constraint(equalToConstant: view.bounds.width*0.25),
      normalRank3Image.heightAnchor.constraint(equalToConstant: view.bounds.height*0.09),
      
      normalRanking1.bottomAnchor.constraint(equalTo: normalRank1Image.topAnchor, constant: -5),
      normalRanking1.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
      
      normalRanking2.bottomAnchor.constraint(equalTo: normalRank2Image.topAnchor, constant: -5),
      normalRanking2.centerXAnchor.constraint(equalTo: normalRank2Image.centerXAnchor),
      
      normalRanking3.bottomAnchor.constraint(equalTo: normalRank3Image.topAnchor, constant: -5),
      normalRanking3.centerXAnchor.constraint(equalTo: normalRank3Image.centerXAnchor),
      
      
      hardRank1Image.bottomAnchor.constraint(equalTo: hardRankImageCover.topAnchor),
      hardRank1Image.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
      hardRank1Image.widthAnchor.constraint(equalToConstant: view.bounds.width*0.25),
      hardRank1Image.heightAnchor.constraint(equalToConstant: view.bounds.height*0.18),
      
      hardRank2Image.bottomAnchor.constraint(equalTo: hardRank1Image.bottomAnchor),
      hardRank2Image.trailingAnchor.constraint(equalTo: hardRank1Image.leadingAnchor, constant: -5),
      hardRank2Image.widthAnchor.constraint(equalToConstant: view.bounds.width*0.25),
      hardRank2Image.heightAnchor.constraint(equalToConstant: view.bounds.height*0.13),
      
      hardRank3Image.bottomAnchor.constraint(equalTo: hardRank1Image.bottomAnchor),
      hardRank3Image.leadingAnchor.constraint(equalTo: hardRank1Image.trailingAnchor, constant: 5),
      hardRank3Image.widthAnchor.constraint(equalToConstant: view.bounds.width*0.25),
      hardRank3Image.heightAnchor.constraint(equalToConstant: view.bounds.height*0.09),
      
      hardRankImageCover.topAnchor.constraint(equalTo: Button60s.topAnchor, constant: -20),
      hardRankImageCover.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
      hardRankImageCover.widthAnchor.constraint(equalToConstant: view.bounds.width/1.2),
      hardRankImageCover.heightAnchor.constraint(equalToConstant: view.bounds.height/5.5),
      
      
      hardRanking1.bottomAnchor.constraint(equalTo: hardRank1Image.topAnchor, constant: -5),
      hardRanking1.centerXAnchor.constraint(equalTo: hardRank1Image.centerXAnchor),
      
      hardRanking2.bottomAnchor.constraint(equalTo: hardRank2Image.topAnchor, constant: -5),
      hardRanking2.centerXAnchor.constraint(equalTo: hardRank2Image.centerXAnchor),
      
      hardRanking3.bottomAnchor.constraint(equalTo: hardRank3Image.topAnchor, constant: -5),
      hardRanking3.centerXAnchor.constraint(equalTo: hardRank3Image.centerXAnchor),
      
      backButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
      backButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
      backButton.widthAnchor.constraint(equalToConstant: 20),
      backButton.heightAnchor.constraint(equalToConstant: 20),
    ])
    
    backButton.backgroundColor = .clear
    backButton.tintColor = .black
    backButton.contentMode = .scaleAspectFit
    backButton.restorationIdentifier = "backButton"
    if #available(iOS 13.0, *) {
      backButton.setPreferredSymbolConfiguration(.init(pointSize: 30), forImageIn: .normal)
    } else {

    }
    if #available(iOS 13.0, *) {
      backButton.setImage(UIImage(systemName: "multiply"), for: .normal)
    } else {
      backButton.setImage(UIImage(named: "multiply"), for: .normal)
    }
    backButton.addTarget(self, action: #selector(buttonFunc(_:)), for: .touchUpInside)
    
    
    
    mainRankLabel.text = "User Rank"
    mainRankLabel.contentMode = .center
    mainRankLabel.font = UIFont(name: "Gill Sans", size: 50)
    mainRankLabel.textColor = #colorLiteral(red: 0.2605174184, green: 0.2605243921, blue: 0.260520637, alpha: 1)
    
    normalRankLable.text = "Normal Level"
    normalRankLable.contentMode = .center
    normalRankLable.font = UIFont(name: "Gill Sans", size: 30)
    normalRankLable.textColor = #colorLiteral(red: 0.2605174184, green: 0.2605243921, blue: 0.260520637, alpha: 1)
    
    hardRankLable.text = "Hard Level"
    hardRankLable.contentMode = .center
    hardRankLable.font = UIFont(name: "Gill Sans", size: 30)
    hardRankLable.textColor = #colorLiteral(red: 0.2605174184, green: 0.2605243921, blue: 0.260520637, alpha: 1)
    
    Button10s.setTitle("10s", for: .normal)
    Button10s.layer.borderColor = #colorLiteral(red: 0.2605174184, green: 0.2605243921, blue: 0.260520637, alpha: 1)
    Button10s.layer.cornerRadius = 8
    Button10s.layer.borderWidth = 3
    Button10s.restorationIdentifier = "10sRank"
    Button60s.setTitle("60s", for: .normal)
    Button60s.layer.borderColor = #colorLiteral(red: 0.2605174184, green: 0.2605243921, blue: 0.260520637, alpha: 1)
    Button60s.layer.cornerRadius = 8
    Button60s.layer.borderWidth = 3
    Button60s.restorationIdentifier = "60sRank"
    Button120s.setTitle("120s", for: .normal)
    Button120s.layer.borderColor = #colorLiteral(red: 0.2605174184, green: 0.2605243921, blue: 0.260520637, alpha: 1)
    Button120s.layer.cornerRadius = 8
    Button120s.layer.borderWidth = 3
    Button120s.restorationIdentifier = "120sRank"
    
    buttonUI.forEach { $0.setTitleColor(#colorLiteral(red: 0.2605174184, green: 0.2605243921, blue: 0.260520637, alpha: 1), for: .normal) }
    buttonUI.forEach { $0.titleLabel?.font = UIFont(name: "Gill Sans", size: 25) }
    buttonUI.forEach { $0.addTarget(self, action: #selector(buttonFunc), for: .touchUpInside) }
    
    normalRank1Image.image = UIImage(named: "normal_rank_1st")
    normalRank1Image.contentMode = .scaleToFill
    normalRank1Image.transform = .init(translationX: 0, y: 165)
    normalRank2Image.image = UIImage(named: "normal_rank_2nd")
    normalRank2Image.contentMode = .scaleToFill
    normalRank2Image.transform = .init(translationX: 0, y: 165)
    normalRank3Image.image = UIImage(named: "normal_rank_3rd")
    normalRank3Image.contentMode = .scaleToFill
    normalRank3Image.transform = .init(translationX: 0, y: 165)
  
    normalRankImageCover.backgroundColor = #colorLiteral(red: 0.921431005, green: 0.9214526415, blue: 0.9214410186, alpha: 1)
//    normalRankImageCover.backgroundColor = .black
//    normalRankImageCover.alpha = 0.5
    
    hardRank1Image.image = UIImage(named: "hard_rank_1st")
    hardRank1Image.transform = .init(translationX: 0, y: 165)
    hardRank1Image.contentMode = .scaleToFill
    hardRank2Image.image = UIImage(named: "hard_rank_2nd")
    hardRank2Image.contentMode = .scaleToFill
    hardRank2Image.transform = .init(translationX: 0, y: 165)
    hardRank3Image.image = UIImage(named: "hard_rank_3rd")
    hardRank3Image.contentMode = .scaleToFill
    hardRank3Image.transform = .init(translationX: 0, y: 165)

    hardRankImageCover.backgroundColor = #colorLiteral(red: 0.921431005, green: 0.9214526415, blue: 0.9214410186, alpha: 1)
//    hardRankImageCover.backgroundColor = .black
//    hardRankImageCover.alpha = 0.5
    
    
    userLabelUI.forEach { $0.contentMode = .center }
    userLabelUI.forEach { $0.font = UIFont(name: "Gill Sans", size: 14) }
    userLabelUI.forEach { $0.numberOfLines = 0 }
    
    normalRanking1.transform = .init(translationX: 0, y: 200)
    normalRanking2.transform = .init(translationX: 0, y: 200)
    normalRanking3.transform = .init(translationX: 0, y: 200)

    hardRanking1.transform = .init(translationX: 0, y: 200)
    hardRanking2.transform = .init(translationX: 0, y: 200)
    hardRanking3.transform = .init(translationX: 0, y: 200)

  }
  
  private func doForRankAnimation() {
    UIView.animateKeyframes(withDuration: 2.0, delay: 0.0, options: [.calculationModeLinear], animations: {
      UIView.addKeyframe(withRelativeStartTime: 0.0, relativeDuration: 0.15) {
        self.normalRank3Image.transform = .identity
      }
      UIView.addKeyframe(withRelativeStartTime: 0.1, relativeDuration: 0.35) {
        self.normalRank2Image.transform = .identity
        self.normalRanking3.transform = .identity
      }
      UIView.addKeyframe(withRelativeStartTime: 0.3, relativeDuration: 0.5) {
        self.normalRank1Image.transform = .identity
        self.normalRanking2.transform = .identity
      }
      UIView.addKeyframe(withRelativeStartTime: 0.5, relativeDuration: 0.6) {
        self.normalRanking1.transform = .identity
      }
      UIView.addKeyframe(withRelativeStartTime: 0.8, relativeDuration: 0.5) {
        self.normalRankImageCover.transform = .init(scaleX: 1.0, y: 0.15)
      }
      UIView.addKeyframe(withRelativeStartTime: 0.15, relativeDuration: 0.25) {
        self.hardRank3Image.transform = .identity
      }
      UIView.addKeyframe(withRelativeStartTime: 0.35, relativeDuration: 0.35) {
        self.hardRank2Image.transform = .identity
        self.hardRanking3.transform = .identity
      }
      UIView.addKeyframe(withRelativeStartTime: 0.75, relativeDuration: 0.65) {
        self.hardRank1Image.transform = .identity
        self.hardRanking2.transform = .identity
      }
      UIView.addKeyframe(withRelativeStartTime: 0.85, relativeDuration: 0.8) {
        self.hardRanking1.transform = .identity
      }
    })
  }
  
  private func translationUI() {
    normalRank1Image.transform = .init(translationX: 0, y: 165)
    normalRank2Image.transform = .init(translationX: 0, y: 165)
    normalRank3Image.transform = .init(translationX: 0, y: 165)
    
    hardRank1Image.transform = .init(translationX: 0, y: 165)
    hardRank2Image.transform = .init(translationX: 0, y: 165)
    hardRank3Image.transform = .init(translationX: 0, y: 165)

    normalRanking1.transform = .init(translationX: 0, y: 200)
    normalRanking2.transform = .init(translationX: 0, y: 200)
    normalRanking3.transform = .init(translationX: 0, y: 200)
    
    hardRanking1.transform = .init(translationX: 0, y: 200)
    hardRanking2.transform = .init(translationX: 0, y: 200)
    hardRanking3.transform = .init(translationX: 0, y: 200)
    
    normalRankImageCover.transform = .identity
    
  }
  
  @objc private func buttonFunc(_ sender: UIButton) {
    let data = Gamedata()
    data.doArrayScore()
    let userLabelUI = [normalRanking1, normalRanking2, normalRanking3, hardRanking1, hardRanking2, hardRanking3]
    translationUI()
    switch sender.restorationIdentifier {
    case "10sRank":
      Button10s.backgroundColor = #colorLiteral(red: 0.5704585314, green: 0.5704723597, blue: 0.5704649091, alpha: 1)
      Button60s.backgroundColor = .clear
      Button120s.backgroundColor = .clear
      let normalRank = Gamedata.normal_10Rank
      let hardRank = Gamedata.hard_10Rank
      doForRankAnimation()
      makeRankLabel(userLabelUI, normalRank, hardRank)
      
    case "60sRank":
      Button10s.backgroundColor = .clear
      Button60s.backgroundColor = #colorLiteral(red: 0.5704585314, green: 0.5704723597, blue: 0.5704649091, alpha: 1)
      Button120s.backgroundColor = .clear
      let normalRank = Gamedata.normal_60Rank
      let hardRank = Gamedata.hard_60Rank
      doForRankAnimation()
      makeRankLabel(userLabelUI, normalRank, hardRank)
      
    case "120sRank":
      Button10s.backgroundColor = .clear
      Button60s.backgroundColor = .clear
      Button120s.backgroundColor = #colorLiteral(red: 0.5704585314, green: 0.5704723597, blue: 0.5704649091, alpha: 1)
      let normalRank = Gamedata.normal_120Rank
      let hardRank = Gamedata.hard_120Rank
      doForRankAnimation()
      print(hardRank)
      makeRankLabel(userLabelUI, normalRank, hardRank)
      
    default:
      dismiss(animated: true)
    }
  }
  
  private func makeRankLabel(_ Label: [UILabel], _ normalRank: [(key: String, value: Int)], _ hardRank: [(key: String, value: Int)]) {
    if normalRank.count >= 3 {
      Label[0].text = " \(normalRank[0].key)\nScore: \(normalRank[0].value)"
      Label[1].text = " \(normalRank[1].key)\nScore: \(normalRank[1].value)"
      Label[2].text = " \(normalRank[2].key)\nScore: \(normalRank[2].value)"
    } else if normalRank.count == 2 {
      Label[0].text = " \(normalRank[0].key)\nScore: \(normalRank[0].value)"
      Label[1].text = " \(normalRank[1].key)\nScore: \(normalRank[1].value)"
      Label[2].text = " Empty" + "\nScore: 0"
    } else if normalRank.count == 1 {
      Label[0].text = "\(normalRank[0].key)\n Score: \(normalRank[0].value)"
      Label[1].text = " Empty" + "\nScore: 0"
      Label[2].text = " Empty" + "\nScore: 0"
    } else {
      Label[0].text = " Empty" + "\nScore: 0"
      Label[1].text = " Empty" + "\nScore: 0"
      Label[2].text = " Empty" + "\nScore: 0"
    }
    
    if hardRank.count >= 3 {
      Label[3].text = " \(hardRank[0].key)\nScore: \(hardRank[0].value)"
      Label[4].text = " \(hardRank[1].key)\nScore: \(hardRank[1].value)"
      Label[5].text = " \(hardRank[2].key)\nScore: \(hardRank[2].value)"
    } else if hardRank.count == 2 {
      Label[3].text = " \(hardRank[0].key)\nScore: \(hardRank[0].value)"
      Label[4].text = " \(hardRank[1].key)\nScore: \(hardRank[1].value)"
      Label[5].text = " Empty" + "\nScore: 0"
    } else if hardRank.count == 1 {
      Label[3].text = " \(hardRank[0].key)\nScore: \(hardRank[0].value)"
      Label[4].text = " Empty" + "\nScore: 0"
      Label[5].text = " Empty" + "\nScore: 0"
    } else {
      Label[3].text = " Empty" + "\nScore: 0"
      Label[4].text = " Empty" + "\nScore: 0"
      Label[5].text = " Empty" + "\nScore: 0"
    }
  }
}


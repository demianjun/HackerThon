//
//  StarViewController.swift
//  200131_SecondHackaThon
//
//  Created by Demian on 2020/01/31.
//  Copyright © 2020 Demian. All rights reserved.
//

import UIKit

class StartViewController: UIViewController {
  
  let titleLabel = UILabel()
  let startButton = UIButton()
  let howToPlay = UIButton()
  let scoreResetButton = UIButton()
  let makeHiddenButton = UIButton()
  
  private let optionButton = UIButton()
   let mainTopCover = UIImageView()
   let mainBottomCover = UIImageView()
  private let normalLabel = UILabel()
  private let hardLabel = UILabel()
  private let normalScoresLabel = UILabel()
  private let hardScoresLabel = UILabel()
  
  
  override func viewDidLoad() {
    let data = Gamedata()
    data.doArrayScore()
    
    super.viewDidLoad()
    view.backgroundColor = #colorLiteral(red: 0.921431005, green: 0.9214526415, blue: 0.9214410186, alpha: 1)
    setUI()
    setScoreLabel()
//    animateMainLabel()
  }
  
  private func setUI() {
    let UI = [mainTopCover, mainBottomCover, titleLabel, startButton, howToPlay, normalScoresLabel, hardScoresLabel, scoreResetButton, normalLabel, hardLabel, makeHiddenButton]
    UI.forEach{ view.addSubview($0)}
    UI.forEach{ $0.translatesAutoresizingMaskIntoConstraints = false }
    
    NSLayoutConstraint.activate([
      mainTopCover.topAnchor.constraint(equalTo: view.topAnchor, constant: -20),
      mainTopCover.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
      mainTopCover.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1.2),
      mainTopCover.bottomAnchor.constraint(equalTo: titleLabel.topAnchor, constant: -10),
      
      mainBottomCover.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
      mainBottomCover.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1.2),
      mainBottomCover.topAnchor.constraint(equalTo: howToPlay.bottomAnchor, constant: -80),
      
      titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 120),
      titleLabel.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
      titleLabel.widthAnchor.constraint(equalToConstant: view.frame.width*0.7),
      titleLabel.heightAnchor.constraint(equalToConstant: 100),
      
//      makeHiddenButton.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 5),
//      makeHiddenButton.centerXAnchor.constraint(equalTo: titleLabel.centerXAnchor),
      
      
      startButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor,constant: view.frame.height/6),
      startButton.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
      startButton.widthAnchor.constraint(equalToConstant: view.frame.width-10),
      startButton.heightAnchor.constraint(equalToConstant: 45),
      
      howToPlay.topAnchor.constraint(equalTo: startButton.bottomAnchor, constant: 20),
      howToPlay.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
      howToPlay.widthAnchor.constraint(equalToConstant: view.frame.width-10),
      howToPlay.heightAnchor.constraint(equalToConstant: 45),
      
      
      normalScoresLabel.topAnchor.constraint(equalTo: makeHiddenButton.bottomAnchor, constant: view.bounds.height/15),
      normalScoresLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor, constant: -10),
      normalScoresLabel.widthAnchor.constraint(equalToConstant: view.bounds.width/3.3),
      normalScoresLabel.heightAnchor.constraint(equalToConstant: 100),
      
      normalLabel.widthAnchor.constraint(equalToConstant: view.bounds.width/2.5),
      normalLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor, constant: 5),
      normalLabel.bottomAnchor.constraint(equalTo: normalScoresLabel.topAnchor),
      
      hardScoresLabel.topAnchor.constraint(equalTo: makeHiddenButton.bottomAnchor, constant: view.bounds.height/15),
      hardScoresLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor, constant: 35),
      hardScoresLabel.widthAnchor.constraint(equalToConstant: view.bounds.width/3),
      hardScoresLabel.heightAnchor.constraint(equalToConstant: 100),
      
      hardLabel.widthAnchor.constraint(equalToConstant: view.bounds.width/3),
      hardLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor, constant: 20),
      hardLabel.bottomAnchor.constraint(equalTo: hardScoresLabel.topAnchor),
      
      
      scoreResetButton.topAnchor.constraint(equalTo: howToPlay.bottomAnchor, constant: 20),
      scoreResetButton.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
      scoreResetButton.widthAnchor.constraint(equalToConstant: view.frame.width-10),
      scoreResetButton.heightAnchor.constraint(equalToConstant: 45),
      
    ])
    mainTopCover.image = UIImage(named: "mainTopCover")
    mainTopCover.layer.shadowRadius = 5.0
    mainTopCover.layer.shadowOpacity = 5.0
    mainTopCover.layer.shadowColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
    mainTopCover.contentMode = .scaleAspectFill
    
    mainBottomCover.image = UIImage(named: "mainBottomCover")
    mainBottomCover.layer.shadowRadius = 5.0
    mainBottomCover.layer.shadowOpacity = 5.0
    mainBottomCover.layer.shadowColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
    mainBottomCover.contentMode = .scaleAspectFill
    
    titleLabel.text = "Mini Set"
    titleLabel.textAlignment = .center
    titleLabel.font = UIFont(name: "Gill Sans", size: 70)
    titleLabel.textColor = #colorLiteral(red: 0.2605174184, green: 0.2605243921, blue: 0.260520637, alpha: 1)
    
//    makeHiddenButton.setTitle("Your Score", for: .normal)
//    makeHiddenButton.setTitleColor(#colorLiteral(red: 0.2605174184, green: 0.2605243921, blue: 0.260520637, alpha: 1), for: .normal)
//    makeHiddenButton.titleLabel?.font = .systemFont(ofSize: 15)
//    makeHiddenButton.addTarget(self, action: #selector(doHiddenScore(_:)), for: .touchUpInside)
    
    
    startButton.backgroundColor = #colorLiteral(red: 0.1566663682, green: 0.4566930532, blue: 0.6562037468, alpha: 1)
    startButton.setTitle("Start Game", for: .normal)
    startButton.setTitleColor(#colorLiteral(red: 0.921431005, green: 0.9214526415, blue: 0.9214410186, alpha: 1), for: .normal)
    startButton.titleLabel?.font = .italicSystemFont(ofSize: 25)
    startButton.layer.cornerRadius = 3
    startButton.restorationIdentifier = "MainStartButton"
    startButton.addTarget(self, action: #selector(buttonFunc(_:)), for: .touchUpInside)
    
    howToPlay.backgroundColor = #colorLiteral(red: 0.1566663682, green: 0.4566930532, blue: 0.6562037468, alpha: 1)
    howToPlay.setTitle("How To Play", for: .normal)
    howToPlay.setTitleColor(#colorLiteral(red: 0.921431005, green: 0.9214526415, blue: 0.9214410186, alpha: 1), for: .normal)
    howToPlay.titleLabel?.font = .italicSystemFont(ofSize: 25)
    howToPlay.layer.cornerRadius = 3
    howToPlay.restorationIdentifier = "howToPlay"
    howToPlay.addTarget(self, action: #selector(buttonFunc(_:)), for: .touchUpInside)
    
    
    normalLabel.textAlignment = .center
    normalLabel.backgroundColor = .clear
    normalLabel.font = UIFont(name: "Gill Sans", size: 25)
    normalLabel.textColor = #colorLiteral(red: 0.2605174184, green: 0.2605243921, blue: 0.260520637, alpha: 1)
    normalLabel.text = "Normal Level"
    
    normalScoresLabel.textAlignment = .left
    normalScoresLabel.backgroundColor = .clear
    normalScoresLabel.font = UIFont(name: "Gill Sans", size: 23)
    normalScoresLabel.textColor = #colorLiteral(red: 0.2605174184, green: 0.2605243921, blue: 0.260520637, alpha: 1)
    normalScoresLabel.numberOfLines = 0
    
    hardLabel.textAlignment = .center
    hardLabel.backgroundColor = .clear
    hardLabel.font = UIFont(name: "Gill Sans", size: 25)
    hardLabel.textColor = #colorLiteral(red: 0.2605174184, green: 0.2605243921, blue: 0.260520637, alpha: 1)
    hardLabel.text = "Hard Level"
    
    
    hardScoresLabel.textAlignment = .left
    hardScoresLabel.backgroundColor = .clear
    hardScoresLabel.font = UIFont(name: "Gill Sans", size: 23)
    hardScoresLabel.textColor = #colorLiteral(red: 0.2605174184, green: 0.2605243921, blue: 0.260520637, alpha: 1)
    hardScoresLabel.numberOfLines = 0
    
    scoreResetButton.backgroundColor = #colorLiteral(red: 0.1566663682, green: 0.4566930532, blue: 0.6562037468, alpha: 1)
    scoreResetButton.setTitle("User Rank!!", for: .normal)
    scoreResetButton.setTitleColor(#colorLiteral(red: 0.921431005, green: 0.9214526415, blue: 0.9214410186, alpha: 1), for: .normal)
    scoreResetButton.titleLabel?.font = .italicSystemFont(ofSize: 25)
    scoreResetButton.layer.cornerRadius = 3
    scoreResetButton.restorationIdentifier = "RankScore"
    scoreResetButton.addTarget(self, action: #selector(doResetScore(_:)), for: .touchUpInside)
    
    let willHiddenUI = [hardLabel, hardScoresLabel, normalLabel, normalScoresLabel]
    willHiddenUI.forEach{ $0.isHidden = true }
    
  }
  
  //MARK: Button Action
  @objc func buttonFunc(_ sender: UIButton) {
    switch sender.restorationIdentifier {
    case "MainStartButton":
      titleLabel.isHidden = true
      howToPlay.isHidden = true
      scoreResetButton.isHidden = true
      
//      if hardLabel.isHidden {
//        makeHiddenButton.isHidden = true
//      } else {
//        makeHiddenButton.isHidden = true
//        doHiddenScore(sender)
//      }
      
      DispatchQueue.main.asyncAfter(deadline: .now()+0.2) {
        self.startButton.isHidden = true
      }
      
      let optionVC = TimeOptionViewController()
      optionVC.delegate = self
      optionVC.modalPresentationStyle = .overFullScreen
      present(optionVC, animated: false)
      
      TimeOptionViewController.userSelectLevel = nil
    case "howToPlay":
      let howtoVC = HowToPlayViewController()
      howtoVC.modalPresentationStyle = .overFullScreen
      present(howtoVC, animated: true)
    default:
      print("error")
    }
  }
  
  private func setScoreLabel() {
    let userDefaults = UserDefaults.standard

    let normalTemp10 = userDefaults.dictionary(forKey: "Normal10") ?? ["Normal10": "##"]
    let normalTemp60 = userDefaults.dictionary(forKey: "Normal60") ?? ["Normal60": "##"]
    let normalTemp120 = userDefaults.dictionary(forKey: "Normal120") ?? ["Normal120": "##"]
    
    let normal10 = normalTemp10["Normal10"] ?? "##"
    let normal60 = normalTemp60["Normal60"] ?? "##"
    let normal120 = normalTemp120["Normal120"] ?? "####"
    
    var normalText = "10s:  \(normal10)\n"
    normalText += "60s:  \(normal60)\n"
    normalText += "120s:  \(normal120)"
    normalScoresLabel.text = normalText
    
    let hardTemp10 = userDefaults.dictionary(forKey: "Hard10") ?? ["Hard10": "##"]
    let hardTemp60 = userDefaults.dictionary(forKey: "Hard60") ?? ["Hard60": "##"]
    let hardTemp120 = userDefaults.dictionary(forKey: "Hard120") ?? ["Hard120": "##"]
    
    let hard10 = hardTemp10["Hard10"] ?? "##"
    let hard60 = hardTemp60["Hard60"] ?? "##"
    let hard120 = hardTemp120["Hard120"] ?? "##"
    
    var hardText = "10s:  \(hard10)\n"
    hardText += "60s:  \(hard60)\n"
    hardText += "120s:  \(hard120)"
    hardScoresLabel.text = hardText
    
    
  }
  
  @objc func doResetScore(_ sender: Any) {
//    let alert = UIAlertController(title: "모든 점수를 초기화 하겠습니까?", message: "한번 초기화 하면 되돌릴 수 없습니다😢", preferredStyle: .alert)
//    present(alert, animated: true)
//    let ok = UIAlertAction(title: "OK", style: .default) { _ in
//
//      UserDefaults.standard.removeObject(forKey: "Normal10")
//      UserDefaults.standard.removeObject(forKey: "Normal60")
//      UserDefaults.standard.removeObject(forKey: "Normal120")
//      UserDefaults.standard.removeObject(forKey: "Hard10")
//      UserDefaults.standard.removeObject(forKey: "Hard60")
//      UserDefaults.standard.removeObject(forKey: "Hard120")
//      self.setScoreLabel()
//
//    }
//    let cancel = UIAlertAction(title: "취소", style: .cancel)
//    alert.addAction(ok)
//    alert.addAction(cancel)
    let rankVC = RankViewController()
    rankVC.modalPresentationStyle = .fullScreen
    present(rankVC, animated: true)
  }
  
//  @objc func doHiddenScore(_ sender: UIButton) {
//    let willHiddenUI = [hardLabel, hardScoresLabel, normalLabel, normalScoresLabel]
//    willHiddenUI.forEach{ $0.isHidden.toggle() }
//  }
}

extension StartViewController: startGameAnimationButton {
  func didTapAnimationButton(_ sender: UIButton) {
    if sender.tag == 20 {
      UIView.animate(withDuration: 0.4) {
        self.mainTopCover.transform = .init(translationX: 0, y: -400)
        self.mainBottomCover.transform = .init(translationX: 0, y: 400)
      }
    }
  }
}

//
//  OptionViewController.swift
//  200131_SecondHackaThon
//
//  Created by Demian on 2020/02/04.
//  Copyright © 2020 Demian. All rights reserved.
//

import UIKit

protocol startGameAnimationButton: class {
  func didTapAnimationButton(_ sender: UIButton)
}

class TimeOptionViewController: UIViewController {
  
  weak var delegate: startGameAnimationButton?
   let startButton = UIButton()
  private let cautionLabel = UILabel()
   let segmentTimeControl = UISegmentedControl(items: ["60s", "120s", "Infinity"])
   let segmentLevelControl = UISegmentedControl(items: ["Normal", "Hard"])
  
  private let homeButton = UIButton()
  
  static var userSelectLevel: String!
  static var userSelectTime: Int!
  
  override func viewDidLoad() {
    super.viewDidLoad()

    view.backgroundColor = .clear
    setUI()
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
  }
  
  private func setUI() {
    view.addSubview(startButton)
    view.addSubview(segmentTimeControl)
    view.addSubview(segmentLevelControl)
    view.addSubview(homeButton)
    view.addSubview(cautionLabel)
    //    view.addSubview(segmentLabel)
    
    cautionLabel.translatesAutoresizingMaskIntoConstraints = false
    segmentLevelControl.translatesAutoresizingMaskIntoConstraints = false
    segmentTimeControl.translatesAutoresizingMaskIntoConstraints = false
    homeButton.translatesAutoresizingMaskIntoConstraints = false
    startButton.translatesAutoresizingMaskIntoConstraints = false
    NSLayoutConstraint.activate([
      cautionLabel.bottomAnchor.constraint(equalTo: segmentLevelControl.topAnchor, constant: -30),
      cautionLabel.centerXAnchor.constraint(equalTo: segmentLevelControl.centerXAnchor),
      
      segmentLevelControl.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
      segmentLevelControl.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor, constant: -100),
      segmentLevelControl.widthAnchor.constraint(equalTo: view.safeAreaLayoutGuide.widthAnchor, multiplier: 0.7),
      segmentLevelControl.heightAnchor.constraint(equalToConstant: 50),
      
      segmentTimeControl.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
      segmentTimeControl.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor),
      segmentTimeControl.widthAnchor.constraint(equalTo: view.safeAreaLayoutGuide.widthAnchor, multiplier: 0.7),
      segmentTimeControl.heightAnchor.constraint(equalToConstant: 50),
      
      
      homeButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
      homeButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
      homeButton.widthAnchor.constraint(equalToConstant: 35),
      homeButton.heightAnchor.constraint(equalToConstant: 35),
      
      startButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor,constant: view.frame.height/6),
      startButton.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
      startButton.widthAnchor.constraint(equalToConstant: view.frame.width-10),
      startButton.heightAnchor.constraint(equalToConstant: 45),
      
    ])
    startButton.backgroundColor = #colorLiteral(red: 0.1566663682, green: 0.4566930532, blue: 0.6562037468, alpha: 1)
    startButton.setTitle("Start Game", for: .normal)
    startButton.setTitleColor(#colorLiteral(red: 0.921431005, green: 0.9214526415, blue: 0.9214410186, alpha: 1), for: .normal)
    startButton.titleLabel?.font = .italicSystemFont(ofSize: 25)
    startButton.layer.cornerRadius = 3
    startButton.tag = 20
    startButton.restorationIdentifier = "startBtn"
    startButton.addTarget(self, action: #selector(didTapButton(_:)), for: .touchUpInside)
    
    homeButton.setImage(UIImage(named: "home"), for: .normal)
    homeButton.backgroundColor = .clear
    homeButton.tintColor = #colorLiteral(red: 0.921431005, green: 0.9214526415, blue: 0.9214410186, alpha: 1)
    homeButton.contentMode = .scaleAspectFit
    homeButton.restorationIdentifier = "homeButton"
    homeButton.addTarget(self, action: #selector(didTapButton(_:)), for: .touchUpInside)
    
    cautionLabel.text = "Please Select Level!"
    cautionLabel.font = UIFont(name: "Gill Sans", size: 40)
    cautionLabel.textAlignment = .center
    cautionLabel.textColor = #colorLiteral(red: 0.819542706, green: 0.0844700709, blue: 0, alpha: 1)
    cautionLabel.alpha = 0.0
    
    segmentLevelControl.backgroundColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
    segmentLevelControl.setTitleTextAttributes([NSAttributedString.Key.font: UIFont.systemFont(ofSize: 20), NSAttributedString.Key.foregroundColor: #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)],
                                              for: .normal)
    segmentLevelControl.setTitleTextAttributes([NSAttributedString.Key.font: UIFont.systemFont(ofSize: 20), NSAttributedString.Key.foregroundColor: #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)],
                                              for: .selected)
    segmentLevelControl.addTarget(self, action: #selector(levelChange(_:)), for: .valueChanged)
    
    segmentTimeControl.backgroundColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
    segmentTimeControl.setTitleTextAttributes([NSAttributedString.Key.font: UIFont.systemFont(ofSize: 20), NSAttributedString.Key.foregroundColor: #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)],
                                              for: .normal)
    segmentTimeControl.setTitleTextAttributes([NSAttributedString.Key.font: UIFont.systemFont(ofSize: 20), NSAttributedString.Key.foregroundColor: #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)],
                                              for: .selected)
    segmentTimeControl.addTarget(self, action: #selector(timeChange(_:)), for: .valueChanged)
  }
  
  
  //MARK: Segcontroller
  @objc func levelChange(_ segControl: UISegmentedControl) {
    
    switch segControl.selectedSegmentIndex {
    case 0:
      TimeOptionViewController.userSelectLevel = "Normal"
    case 1:
      TimeOptionViewController.userSelectLevel = "Hard"
    default:
      print("userSelectMode")
    }
  }
  
  @objc func timeChange(_ segControl: UISegmentedControl) {
    switch segControl.selectedSegmentIndex {
    case 0:
      TimeOptionViewController.userSelectTime = 60
    case 1:
      TimeOptionViewController.userSelectTime = 120
    case 2:
      TimeOptionViewController.userSelectTime = 500
    default:
      print("userSelectTime")
    }
  }
  
  //MARK: Button Action
  @objc private func didTapButton(_ sender: UIButton) {
    switch sender.restorationIdentifier {
    case "startBtn":
      if TimeOptionViewController.userSelectLevel == nil {
        self.segmentLevelControl.alpha = 0.0
        UIView.animateKeyframes(withDuration: 1.2, delay: 0.0, options: [], animations: {
          UIView.addKeyframe(withRelativeStartTime: 0.0, relativeDuration: 0.3) {
            self.cautionLabel.alpha = 1.0
            self.segmentLevelControl.alpha = 1.0
          }
          UIView.addKeyframe(withRelativeStartTime: 0.3, relativeDuration: 0.6) {
            self.cautionLabel.alpha = 0.3
            self.segmentLevelControl.alpha = 0.3
          }
          UIView.addKeyframe(withRelativeStartTime: 0.6, relativeDuration: 0.9) {
            self.cautionLabel.alpha = 1.0
            self.segmentLevelControl.alpha = 1.0
          }
          UIView.addKeyframe(withRelativeStartTime: 0.9, relativeDuration: 1.2) {
            self.cautionLabel.alpha = 0.0
          }
        })
      } else {
        startButton.isHidden = true
        segmentTimeControl.isHidden = true
        segmentLevelControl.isHidden = true
        didTapAnimationButton(sender)
        DispatchQueue.main.asyncAfter(deadline: .now()+0.35) {
          let gameScreenVC = GameScreenViewController()
          gameScreenVC.modalPresentationStyle = .fullScreen
          self.present(gameScreenVC, animated: true)
        }
      }
    case "homeButton":
      guard let startVC = presentingViewController as? StartViewController else { return print("return") }
      TimeOptionViewController.userSelectTime = nil
      TimeOptionViewController.userSelectLevel = nil
      dismiss(animated: false)
      startVC.titleLabel.isHidden = false
      startVC.startButton.isHidden = false
      startVC.howToPlay.isHidden = false
      startVC.scoreResetButton.isHidden = false
      startVC.makeHiddenButton.isHidden = false

      //  dismiss로 변경
//      let startVC = StartViewController()
//      startVC.modalPresentationStyle = .fullScreen
//      self.present(startVC, animated: false)
      
    default:
      print("didTapButton")
    }
  }
  
  func didTapAnimationButton(_ sender: UIButton) {
    delegate?.didTapAnimationButton(sender)
  }
}



//
//  ViewController.swift
//  200131_SecondHackaThon
//
//  Created by Demian on 2020/01/31.
//  Copyright © 2020 Demian. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth
import FirebaseDatabase

class GameScreenViewController: UIViewController {
  
  var ref: DatabaseReference!
  
  private let startButton = UIButton()
  private let topCover = UIImageView()
  private let bottomCover = UIImageView()
  private let scoreLabel = UILabel()
  private let timeLabel = UILabel()
  private let timeInfinity = UIImageView()
  private let countDownCover = UIImageView()
  private let countDownCover1 = UIImageView()
  private let countDownCover2 = UIImageView()
  
  static let showLabel = UILabel()
  
  private var resultScore = Int()
  
  private let resultLabel = UILabel()
  private let retryButton = UIButton()
  
  private let homeButton = UIButton()
  
  private let setLabel = UILabel()
  private let failLabel = UILabel()
  
  private let myBestScore = UILabel()
  private let bestScoreLabel = UILabel()
  
  private let opportunityLabel = UILabel()
  
  var scoreCount = 0
  var time: Int = 0
  var timer = Timer()
  
  var retryBool = true
  
  let layout = UICollectionViewFlowLayout()
  lazy var collectionVeiw = UICollectionView(frame: view.frame, collectionViewLayout: layout)
  
  static var selectedItemArr: [Int] = []
  
  var imageName: String = ""
  static var images: [String] = []
  
  override func viewDidLoad() {
    super.viewDidLoad()
    self.ref = Database.database().reference()
    view.addSubview(countDownCover)
    view.addSubview(countDownCover2)
    view.addSubview(countDownCover1)
    view.addSubview(GameScreenViewController.showLabel)
    setupCollectionView()
    setUI()
  }
  
  //MARK: CollectionView Setup
  private func setupCollectionView() {
    setupFlowLayout()
    collectionVeiw.register(CustomCell.self, forCellWithReuseIdentifier: CustomCell.identifier)
    //    collectionVeiw.backgroundColor = #colorLiteral(red: 0.921431005, green: 0.9214526415, blue: 0.9214410186, alpha: 1)
    collectionVeiw.backgroundColor = .clear
    collectionVeiw.dataSource = self
    collectionVeiw.delegate = self
  collectionVeiw.allowsMultipleSelection = true
    AnswerCheck.randomImages()
    AnswerCheck.checkCombination()
    view.addSubview(collectionVeiw)
  }
  private func setupFlowLayout() {
    let itemInLine: CGFloat = 3
    let spacing: CGFloat = 17
    let insets = UIEdgeInsets(top: (view.frame.height / 3), left: 20, bottom: 10, right: 20)
    let cvWidth = collectionVeiw.bounds.width
    let contentSize = cvWidth - insets.left - insets.right - (spacing * (itemInLine - 1))
    let itemSize = (contentSize / itemInLine).rounded(.down)
    
    layout.minimumLineSpacing = spacing
    layout.minimumInteritemSpacing = spacing
    layout.sectionInset = insets
    layout.itemSize = CGSize(width: itemSize, height: itemSize)
  }
  
  //MARK: UI Setup
  private func setUI() {
    let cover = [bottomCover, topCover, startButton, homeButton]
    let gameUI = [scoreLabel, timeLabel, timeInfinity, opportunityLabel]
    let resultUI = [resultLabel, retryButton, myBestScore, bestScoreLabel]
    
    gameUI.forEach { $0.translatesAutoresizingMaskIntoConstraints = false }
    gameUI.forEach { view.addSubview($0)}
    
    cover.forEach { $0.translatesAutoresizingMaskIntoConstraints = false }
    cover.forEach { view.addSubview($0)}
    
    resultUI.forEach { $0.translatesAutoresizingMaskIntoConstraints = false }
    resultUI.forEach { view.addSubview($0)}
    
    
    countDownCover.translatesAutoresizingMaskIntoConstraints = false
    countDownCover1.translatesAutoresizingMaskIntoConstraints = false
    countDownCover2.translatesAutoresizingMaskIntoConstraints = false
    GameScreenViewController.showLabel.translatesAutoresizingMaskIntoConstraints = false
    
    //MARK: AutoLayOut
    NSLayoutConstraint.activate([
      
      startButton.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
      startButton.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor, constant: -80),
      startButton.widthAnchor.constraint(equalToConstant: 600),
      startButton.heightAnchor.constraint(equalToConstant: 300),
      
      topCover.topAnchor.constraint(equalTo: view.topAnchor, constant: -10),
      topCover.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
      topCover.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor, constant: -view.frame.height/6),
      topCover.widthAnchor.constraint(equalToConstant: view.frame.width*1.5),
      topCover.heightAnchor.constraint(equalToConstant: view.frame.height*0.6),
      
      bottomCover.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 30),
      bottomCover.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
      bottomCover.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor, constant: view.frame.height/6),
      bottomCover.widthAnchor.constraint(equalToConstant: view.frame.width*1.5),
      bottomCover.heightAnchor.constraint(equalToConstant: view.frame.height*0.6),
      
      timeLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50),
      timeLabel.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
      
      timeInfinity.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50),
      timeInfinity.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
      timeInfinity.heightAnchor.constraint(equalToConstant: 35),
      
      scoreLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 150),
      scoreLabel.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
      
      opportunityLabel.topAnchor.constraint(equalTo: scoreLabel.topAnchor),
      opportunityLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 15),
      opportunityLabel.bottomAnchor.constraint(equalTo: scoreLabel.bottomAnchor),
      
      resultLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: view.frame.height/12),
      resultLabel.heightAnchor.constraint(equalToConstant: 90),
      resultLabel.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
      
      //      retryButton.topAnchor.constraint(equalTo: resultLabel.bottomAnchor, constant: 170),
      retryButton.centerXAnchor.constraint(equalTo: startButton.centerXAnchor),
      retryButton.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor, constant: -80),
      retryButton.widthAnchor.constraint(equalToConstant: 150),
      retryButton.heightAnchor.constraint(equalToConstant: 100),
      
      homeButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
      homeButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
      homeButton.widthAnchor.constraint(equalToConstant: 35),
      homeButton.heightAnchor.constraint(equalToConstant: 35),
      
      countDownCover.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor, constant: 70),
      countDownCover.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: -30),
      countDownCover.widthAnchor.constraint(equalToConstant: view.bounds.width*3),
      countDownCover.heightAnchor.constraint(equalToConstant: view.bounds.height),
      
      countDownCover1.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor, constant: -30),
      countDownCover1.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: -30),
      countDownCover1.widthAnchor.constraint(equalToConstant: view.bounds.width*3),
      countDownCover1.heightAnchor.constraint(equalToConstant: view.bounds.height),
      
      countDownCover2.topAnchor.constraint(equalTo: countDownCover1.topAnchor, constant: 200),
      countDownCover2.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: -30),
      countDownCover2.widthAnchor.constraint(equalToConstant: view.bounds.width*0.75),
      countDownCover2.heightAnchor.constraint(equalToConstant: view.bounds.height),
      
      
      myBestScore.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor, constant: view.bounds.height/4),
      myBestScore.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
      
      bestScoreLabel.topAnchor.constraint(equalTo: myBestScore.bottomAnchor, constant: 10),
      bestScoreLabel.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
      
      GameScreenViewController.showLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -120),
      GameScreenViewController.showLabel.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
      GameScreenViewController.showLabel.widthAnchor.constraint(equalToConstant: 180),
      GameScreenViewController.showLabel.heightAnchor.constraint(equalToConstant: 100),
    ])
    
    //MARK: UI Detail SetUp
    GameScreenViewController.showLabel.textColor = #colorLiteral(red: 0.921431005, green: 0.9214526415, blue: 0.9214410186, alpha: 1)
    GameScreenViewController.showLabel.text = "👌🏻 \(AnswerCheck.answer.count)개!"
    GameScreenViewController.showLabel.textAlignment = .center
    GameScreenViewController.showLabel.font = UIFont.preferredFont(forTextStyle: .title2)
    
    startButton.setTitle("Tap to Start!!", for: .normal)
    startButton.setTitleColor(#colorLiteral(red: 0.921431005, green: 0.9214526415, blue: 0.9214410186, alpha: 1), for: .normal)
    startButton.titleLabel?.font = .italicSystemFont(ofSize: 55)
    startButton.addTarget(self, action: #selector(didTapButton(_:)), for: .touchUpInside)
    startButton.backgroundColor = .clear
    startButton.alpha = 1.0
    startButton.restorationIdentifier = "TapToStart"
    
    topCover.image = UIImage(named: "topCover")
    topCover.layer.shadowRadius = 10.0
    topCover.layer.shadowOpacity = 10.0
    topCover.layer.shadowColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
    topCover.contentMode = .scaleAspectFit
    topCover.isUserInteractionEnabled = true
    
    bottomCover.image = UIImage(named: "bottomCover")
    bottomCover.contentMode = .scaleAspectFit
    bottomCover.isUserInteractionEnabled = true
    
    scoreLabel.font = UIFont(name: "Gill Sans", size: 55)
    scoreLabel.textColor = .black
    scoreLabel.textAlignment = .center
    scoreLabel.text = "0"
    
    opportunityLabel.font = UIFont(name: "Gill Sans", size: 22)
    opportunityLabel.textColor = .black
    opportunityLabel.textAlignment = .center
    opportunityLabel.numberOfLines = 0
    switch TimeOptionViewController.userSelectLevel {
    case "Normal":
      break
    case "Hard":
      opportunityLabel.text = "Opportunity\n \(AnswerCheck.opportunity)"
    default:
      print("NormalAndHardOpportunity")
    }
    
    timeLabel.frame = CGRect(x: 0, y: 0, width: 100, height: 20)
    timeLabel.font = UIFont.systemFont(ofSize: 40, weight: .semibold)
    timeLabel.font = UIFont(name: "Gill Sans", size: 40)
    timeLabel.textAlignment = .center
    
    timeInfinity.image = UIImage(named: "infinity")
    timeInfinity.contentMode = .scaleAspectFit
    timeInfinity.isHidden = true
    
    resultLabel.textAlignment = .center
    resultLabel.font = UIFont(name: "Gill Sans", size: 50)
    resultLabel.textColor = #colorLiteral(red: 0.921431005, green: 0.9214526415, blue: 0.9214410186, alpha: 1)
    
    retryButton.setTitle("Retry", for: .normal)
    retryButton.setTitleColor(#colorLiteral(red: 0.921431005, green: 0.9214526415, blue: 0.9214410186, alpha: 1), for: .normal)
    retryButton.titleLabel?.font = UIFont(name: "Gill Sans", size: 45)
    retryButton.restorationIdentifier = "retryButton"
    retryButton.addTarget(self, action: #selector(didTapButton(_:)), for: .touchUpInside)
    retryButton.isHidden = true
    
    homeButton.setImage(UIImage(named: "home"), for: .normal)
    homeButton.backgroundColor = .clear
    homeButton.tintColor = .black
    homeButton.contentMode = .scaleAspectFit
    homeButton.restorationIdentifier = "homeButton"
    homeButton.addTarget(self, action: #selector(didTapButton(_:)), for: .touchUpInside)
    
    countDownCover.image = UIImage(named: "countDownCover")
    countDownCover.layer.shadowRadius = 10.0
    countDownCover.layer.shadowOpacity = 10.0
    countDownCover.layer.shadowColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
    countDownCover.contentMode = .scaleToFill
    
    countDownCover1.image = UIImage(named: "countDownCover1")
    countDownCover1.layer.shadowRadius = 10.0
    countDownCover1.layer.shadowOpacity = 10.0
    countDownCover1.layer.shadowColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
    countDownCover1.contentMode = .scaleToFill
    
    countDownCover2.image = UIImage(named: "countDownCover2")
    countDownCover2.layer.shadowRadius = 10.0
    countDownCover2.layer.shadowOpacity = 10.0
    countDownCover2.layer.shadowColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
    countDownCover2.contentMode = .scaleToFill
    
    
    myBestScore.textAlignment = .center
    myBestScore.font = UIFont(name: "Gill Sans", size: 30)
    myBestScore.textColor = #colorLiteral(red: 0.1660808623, green: 0.4731649756, blue: 0.7214685082, alpha: 1)
    myBestScore.isHidden = true
    
    bestScoreLabel.textAlignment = .center
    bestScoreLabel.font = UIFont(name: "Gill Sans", size: 45)
    bestScoreLabel.textColor = #colorLiteral(red: 0.1660808623, green: 0.4731649756, blue: 0.7214685082, alpha: 1)
    bestScoreLabel.isHidden = true
  }
  
  //MARK: Button Action
  @objc private func didTapButton(_ sender: UIButton) {
    let userTime = TimeOptionViewController.userSelectTime
    switch sender.restorationIdentifier {
    case "TapToStart":
      time = (userTime != nil ? userTime! : 10)
      self.startButton.isHidden = true
      self.countDownCover.isHidden = true
      self.countDownCover1.isHidden = true
      self.countDownCover2.isHidden = true
      
      GameScreenViewController.selectedItemArr = []
      UIView.animate(withDuration: 0.7) {
        self.topCover.transform = .init(translationX: 0, y: -1000)
        self.bottomCover.transform = .init(translationX: 0, y: 1000)
        
      }
      DispatchQueue.main.asyncAfter(deadline: .now()+0.4) {
        self.countDown()
      }
      if time > 200 {
        DispatchQueue.main.asyncAfter(deadline: .now()+0.4) {
          self.timeInfinity.isHidden = false
          self.timeLabel.isHidden = true
        }
      } else {
        DispatchQueue.main.asyncAfter(deadline: .now()+0.4) {
          var timeString = ""
          if String(self.time%60).count == 1 {
            timeString = "\(self.time/60):0\(self.time%60)"
          } else if String(self.time%60).count == 2 {
            timeString = "\(self.time/60):\(self.time%60)"
          }
          self.timeLabel.text = timeString
          self.timerStart()
        }
      }
    case "retryButton":
      
//      AnswerCheck.doRandom()
      AnswerCheck.checkAnswer(collectionVeiw)
      AnswerCheck.randomImages()
      
      AnswerCheck.opportunity = 2
      AnswerCheck.scoreCount = 0
      opportunityLabel.text = "Opportunity\n \(AnswerCheck.opportunity)"
      scoreLabel.text = "0"
      
      retryButton.isHidden = true
      myBestScore.isHidden = true
      bestScoreLabel.isHidden = true
      countDownCover.transform = .identity
      countDownCover1.transform = .identity
      countDownCover2.transform = .identity
      
      GameScreenViewController.selectedItemArr = []
      UIView.animate(withDuration: 0.7) {
        self.topCover.transform = .init(translationX: 0, y: -1000)
        self.bottomCover.transform = .init(translationX: 0, y: 1000)
      }
      
      time = (userTime != nil ? userTime! : 10)
      DispatchQueue.main.asyncAfter(deadline: .now()+0.4) {
        self.countDown()
      }
      if time > 200 {
        DispatchQueue.main.asyncAfter(deadline: .now()+0.4) {
          self.timeInfinity.isHidden = false
          self.timeLabel.isHidden = true
        }
      } else {
        DispatchQueue.main.asyncAfter(deadline: .now()+0.4) {
          var timeString = ""
          if String(self.time%60).count == 1 {
            timeString = "\(self.time/60):0\(self.time%60)"
          } else if String(self.time%60).count == 2 {
            timeString = "\(self.time/60):\(self.time%60)"
          }
          self.timeLabel.text = timeString
          self.timerStart()
        }
      }
      
    case "homeButton":
      
      TimeOptionViewController.userSelectTime = nil
      AnswerCheck.scoreCount = Int()
      
      guard let timeVC = presentingViewController as? TimeOptionViewController else { return print("time return")}
      guard let startVC = timeVC.presentingViewController as? StartViewController else { return print("start return")}
      
      startVC.dismiss(animated: false)
      startVC.titleLabel.isHidden = false
      startVC.startButton.isHidden = false
      startVC.howToPlay.isHidden = false
      startVC.scoreResetButton.isHidden = false
      startVC.makeHiddenButton.isHidden = false
      startVC.mainTopCover.transform = .identity
      startVC.mainBottomCover.transform = .identity
      
      //      let starVC = StartViewController()
      //      starVC.modalPresentationStyle = .fullScreen
    //      self.present(starVC, animated: true)
    default:
      print("didTapScreen")
    }
  }
  
  //MARK: CountDown Animation
  private func countDown() {
    let userTime = (time != 0 ? time : 10)
    switch userTime {
    case 10, 60, 120:
      self.countDownCover1.isHidden = false
      self.countDownCover2.isHidden = false
      UIView.animateKeyframes(withDuration: Double(userTime + 2), delay: 0.0, options: [], animations: {
        UIView.addKeyframe(withRelativeStartTime: 0.0, relativeDuration: 0.5) {
          self.countDownCover1.transform = .init(translationX: 0, y: -(self.view.bounds.height/4.5))
          self.countDownCover2.transform = .init(translationX: 0, y: -(self.view.bounds.height/4.5))
        }
        UIView.addKeyframe(withRelativeStartTime: 0.45, relativeDuration: 0.55) {
          self.countDownCover2.transform = .init(translationX: 30, y: -(self.view.bounds.height/4.5 + self.view.bounds.height/3))
        }
      })
    case 500:
      self.countDownCover.isHidden = false
      UIView.animateKeyframes(withDuration: 7.0, delay: 0.0, options: [.repeat], animations: {
        UIView.addKeyframe(withRelativeStartTime: 0.0, relativeDuration: 0.5) {
          self.countDownCover.transform = .init(translationX: -500, y: 0)
        }
        UIView.addKeyframe(withRelativeStartTime: 0.55, relativeDuration: 0.5) {
          self.countDownCover.transform = .identity
        }
      })
    default:
      print("Animation")
    }
    //    TimeOptionViewController.userSelectTime = nil
  }
  
 //MARK: Timer & input Nick name
  private func timerStart(){
    timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timeLimit), userInfo: nil, repeats: true)
  }
  
  private func timeStop() {
    //    UserDefaults.standard.set(resultScore, forKey: "result")
    timer.invalidate()
    UIView.animate(withDuration: 0.7, delay: 0.0, options: [], animations: {
      self.topCover.transform = .identity
      self.bottomCover.transform = .identity
      self.resultScore = self.scoreCount
    })
    DispatchQueue.main.asyncAfter(deadline: .now()+0.7) {
      self.resultLabel.text = "Score \(self.scoreCount)"
      self.retryButton.isHidden = false
      self.myBestScore.isHidden = false
      self.bestScoreLabel.isHidden = false
      AnswerCheck.opportunity = 2
    }
    if TimeOptionViewController.userSelectTime != 500 {
      saveFirebase(best: AnswerCheck.scoreCount)
    }
  }
  
  @objc private func timeLimit() {
    var stringForTime = ""
    guard time != 0 else { return timeStop()}
    time -= 1
    if String(time%60).count == 1 {
      stringForTime = "\(time/60):0\(time%60)"
    } else if String(time%60).count == 2 {
      stringForTime = "\(time/60):\(time%60)"
    }
    timeLabel.text = stringForTime
  }
  func doit() {
    GameScreenViewController.showLabel.text = "AnswerCheck.answer.count"
  }
  
  private func saveFirebase(best score: Int) {
    let alert = UIAlertController(title: "닉네임을 적어주세요 🥳", message: "현재점수를 저장합니다", preferredStyle: .alert)
    var nickName = String()
    alert.addTextField { (nick) in
      nick.placeholder = "⫷⫸,,⫷⫸"
    }
    present(alert, animated: true)
    let ok = UIAlertAction(title: "OK", style: .default) { _ in
      
//      guard nickName = alert.textFields?[0].text.isEmpty ?? "noname"
//            let myScore = score
//       '.' '#' '$' '[' or ']'
      if alert.textFields?[0].text?.isEmpty == true {
        nickName = "noname"
      } else {
        nickName = (alert.textFields?[0].text)!
      }
      self.ref
        .child("users")
        .child(TimeOptionViewController.userSelectLevel)
        .child(String(TimeOptionViewController.userSelectTime ?? 10))
        .child(nickName)
        .setValue(score)  { (error, ref) in
          if error == nil {
            print("Success")
          } else {
            print("Fail")
            fatalError()
          }
      }
    }
    let cancel = UIAlertAction(title: "취소", style: .cancel)
    alert.addAction(ok)
    alert.addAction(cancel)
  }
}


//MARK: DataSource
extension GameScreenViewController: UICollectionViewDataSource {
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return 9
  }
  
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CustomCell.identifier, for: indexPath) as! CustomCell
    cell.backgroundColor = .clear
    cell.configure(image: UIImage(named: GameScreenViewController.images[indexPath.item]))
    return cell
  }
}

//MARK: Delegate
extension GameScreenViewController: UICollectionViewDelegate {
  func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
    if GameScreenViewController.selectedItemArr.count != 3 {
      return true
    } else {
      return false
    }
  }
  
  func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    if GameScreenViewController.selectedItemArr.count < 3 {
      if !GameScreenViewController.selectedItemArr.contains(indexPath.item) {
        GameScreenViewController.selectedItemArr.append(indexPath.item)
      }
    }
    if GameScreenViewController.selectedItemArr.count == 3 {
      DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
        AnswerCheck.checkAnswer(collectionView)
        self.theEnd()
      }
    }
  }
  
  func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
    guard let cell = collectionView.cellForItem(at: indexPath) as? CustomCell else { return }
    cell.contentView.layer.borderWidth = 0
    GameScreenViewController.selectedItemArr = GameScreenViewController.selectedItemArr.filter { $0 != indexPath.item }
    cell.transform = .identity
  }
  
  //MARK: Retire Animation
  private func theEnd() {
    self.compareScoreAndSaveScore(AnswerCheck.scoreCount)
    self.myBestScoreLabel()
    
    //Nomarl과 Hard 변경
    //    let score = AnswerCheck.scoreCount
    //    if score >= 0 {
    //      self.scoreCount = AnswerCheck.scoreCount
    //      self.scoreLabel.text = "\(self.scoreCount)"
    //    } else {
    //      timeStop()
    //      AnswerCheck.scoreCount = Int()
    //    }
    
    switch TimeOptionViewController.userSelectLevel {
    case "Normal":
      self.opportunityLabel.isHidden = true
      self.scoreCount = AnswerCheck.scoreCount
      self.scoreLabel.text = "\(self.scoreCount)"
    case "Hard":
      self.opportunityLabel.isHidden = false
      if AnswerCheck.opportunity == 0 {
        timeStop()
      }
      self.scoreCount = AnswerCheck.scoreCount
      self.scoreLabel.text = "\(self.scoreCount)"
      self.opportunityLabel.text = "Opportunity\n \(AnswerCheck.opportunity)"
    default:
      print("modeChange")
    }
  }
  
  //MARK: Compare Best Score & Save Score
  private func compareScoreAndSaveScore(_ currentScore: Int) {
    
    var temp: [String : Int] = Dictionary()
    let selectTime = TimeOptionViewController.userSelectTime ?? 10
    let userDefaults = UserDefaults.standard
    switch TimeOptionViewController.userSelectLevel {
    case "Normal":
      switch selectTime {
      case 10: // Time 선택하지 않았을 때
        let restScore = userDefaults.dictionary(forKey: "Normal10") ?? ["Normal10": 0]
        AnswerCheck.bestScore0 = restScore["Normal10"] as! Int
        AnswerCheck.bestScore0 = AnswerCheck.bestScore0 <= currentScore ? currentScore : AnswerCheck.bestScore0
        temp["Normal10"] = AnswerCheck.bestScore0
        userDefaults.set(temp, forKey: "Normal10")
      //        AnswerCheck.bestScore0 = Int()
      case 60: // 60초 선택시
        let restScore = userDefaults.dictionary(forKey: "Normal60") ?? ["Normal60": 0]
        AnswerCheck.bestScore60 = restScore["Normal60"] as! Int
        AnswerCheck.bestScore60 = AnswerCheck.bestScore60 <= currentScore ? currentScore : AnswerCheck.bestScore60
        temp["Normal60"] = AnswerCheck.bestScore60
        userDefaults.set(temp, forKey: "Normal60")
      //        AnswerCheck.bestScore60 = Int()
      case 120: // 120초 선택시
        let restScore = userDefaults.dictionary(forKey: "Normal120") ?? ["Normal120": 0]
        AnswerCheck.bestScore120 = restScore["Normal120"] as! Int
        AnswerCheck.bestScore120 = AnswerCheck.bestScore120 <= currentScore ? currentScore : AnswerCheck.bestScore120
        temp["Normal120"] = AnswerCheck.bestScore120
        userDefaults.set(temp, forKey: "Normal120")
      //        AnswerCheck.bestScore120 = Int()
      default:  // infinity 선택시
        print("Infinity Mode Do Not Save Score")
      }
    case "Hard":
      switch selectTime {
      case 10: // Time 선택하지 않았을 때
        let restScore = userDefaults.dictionary(forKey: "Hard10") ?? ["Hard10": 0]
        AnswerCheck.bestScore0 = restScore["Hard10"] as! Int
        AnswerCheck.bestScore0 = AnswerCheck.bestScore0 <= currentScore ? currentScore : AnswerCheck.bestScore0
        temp["Hard10"] = AnswerCheck.bestScore0
        userDefaults.set(temp, forKey: "Hard10")
      //        AnswerCheck.bestScore0 = Int()
      case 60: // 60초 선택시
        let restScore = userDefaults.dictionary(forKey: "Hard60") ?? ["Hard60": 0]
        AnswerCheck.bestScore60 = restScore["Hard60"] as! Int
        AnswerCheck.bestScore60 = AnswerCheck.bestScore60 <= currentScore ? currentScore : AnswerCheck.bestScore60
        temp["Hard60"] = AnswerCheck.bestScore60
        userDefaults.set(temp, forKey: "Hard60")
      //        AnswerCheck.bestScore60 = Int()
      case 120: // 120초 선택시
        let restScore = userDefaults.dictionary(forKey: "Hard120") ?? ["Hard120": 0]
        AnswerCheck.bestScore120 = restScore["Hard120"] as! Int
        AnswerCheck.bestScore120 = AnswerCheck.bestScore120 <= currentScore ? currentScore : AnswerCheck.bestScore120
        temp["Hard120"] = AnswerCheck.bestScore120
        userDefaults.set(temp, forKey: "Hard120")
      //        AnswerCheck.bestScore120 = Int()
      default:  // infinity 선택시
        print("Infinity Mode Do Not Save Score")
      }
    default:
      print("Compare Best Score & Save Score")
    }
  }
  
  //MARK: Best Score
  private func myBestScoreLabel() {
    let selectTime = TimeOptionViewController.userSelectTime ?? 10
    let userDefaults = UserDefaults.standard
    switch TimeOptionViewController.userSelectLevel {
    case "Normal":
      switch selectTime {
      case 10: // Time 선택하지 않았을 때
        myBestScore.text = "Normal Level 10s"
        bestScoreLabel.text = "Best Score : \(userDefaults.dictionary(forKey: "Normal10")!["Normal10"] ?? 0)"
      case 60: // 60초 선택시
        myBestScore.text = "Normal Level 60s"
        bestScoreLabel.text = "Best Score : \(userDefaults.dictionary(forKey: "Normal60")!["Normal60"] ?? 0)"
      case 120: // 120초 선택시
        myBestScore.text = "Normal Level 120s"
        bestScoreLabel.text = "Best Score : \(userDefaults.dictionary(forKey: "Normal120")!["Normal120"] ?? 0)"
      default:  // infinity 선택시
        print("Infinity Mode Do Not Save Score")
      }
    case "Hard":
      switch selectTime {
      case 10: // Time 선택하지 않았을 때
        myBestScore.text = "Hard Level 10s"
        bestScoreLabel.text = "Best Score : \(userDefaults.dictionary(forKey: "Hard10")!["Hard10"] ?? 0)"
      case 60: // 60초 선택시
        myBestScore.text = "Hard Level 60s"
        bestScoreLabel.text = "Best Score : \(userDefaults.dictionary(forKey: "Hard60")!["Hard60"] ?? 0)"
      case 120: // 120초 선택시
        myBestScore.text = "Hard Level 120s"
        bestScoreLabel.text = "Best Score : \(userDefaults.dictionary(forKey: "Hard120")!["Hard120"] ?? 0)"
      default:  // infinity 선택시
        print("Infinity Mode Do Not Save Score")
      }
    default:
      print("Best Score")
    }
  }
}

extension UIView {
  func shadow() {
    self.layer.shadowRadius = 5.0
    self.layer.shadowOpacity = 1.0
    self.layer.shadowOffset = .zero
    self.layer.shadowColor = UIColor.darkGray.cgColor
  }
}

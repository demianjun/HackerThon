//
//  HowToPlayViewController.swift
//  200131_SecondHackaThon
//
//  Created by Demian on 2020/02/03.
//  Copyright © 2020 Demian. All rights reserved.
//

import UIKit

class HowToPlayViewController: UIViewController {
  
  private let howToPlayLable = UILabel()
  private let explainLabel = UILabel()
  
  private let firstCombination_1 = UIImageView()
  private let firstCombination_2 = UIImageView()
  private let firstCombination_3 = UIImageView()
  private let firstCombinationExplain = UILabel()
  
  private let secondCombination_1 = UIImageView()
  private let secondCombination_2 = UIImageView()
  private let secondCombination_3 = UIImageView()
  private let secondCombinationExplain = UILabel()
  
  private let thirdCombination_1 = UIImageView()
  private let thirdCombination_2 = UIImageView()
  private let thirdCombination_3 = UIImageView()
  private let thirdCombinationExplain = UILabel()
  
  private let fourthCombination_1 = UIImageView()
  private let fourthCombination_2 = UIImageView()
  private let fourthCombination_3 = UIImageView()
  private let fourthCombinationExplain = UILabel()
  
  private let fifthCombination_1 = UIImageView()
  private let fifthCombination_2 = UIImageView()
  private let fifthCombination_3 = UIImageView()
  private let fifthCombinationExplain = UILabel()
  
  private let firstExceptionCombination_1 = UIImageView()
  private let firstExceptionCombination_2 = UIImageView()
  private let firstExceptionCombination_3 = UIImageView()
  private let secondExceptionCombination_1 = UIImageView()
  private let secondExceptionCombination_2 = UIImageView()
  private let secondExceptionCombination_3 = UIImageView()
  private let firstExceptionCombinationExplain = UILabel()
  private let secondExceptionCombinationExplain = UILabel()
  
  
  private let backButton = UIButton()
  private let partitionLineLabel = UILabel()
  private var imageScrollView = UIScrollView()
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = #colorLiteral(red: 0.921431005, green: 0.9214526415, blue: 0.9214410186, alpha: 1)
    setUI()
  }
  private func setUI(){
    let UI = [howToPlayLable, explainLabel, imageScrollView, backButton]
    
    let truePatterImage = [firstCombination_1, firstCombination_2, firstCombination_3, firstCombinationExplain,
                           secondCombination_1, secondCombination_2, secondCombination_3, secondCombinationExplain,
                           thirdCombination_1, thirdCombination_2, thirdCombination_3, thirdCombinationExplain,
                           fourthCombination_1, fourthCombination_2, fourthCombination_3, fourthCombinationExplain,
                           fifthCombination_1, fifthCombination_2, fifthCombination_3, fifthCombinationExplain,
                           partitionLineLabel]
    
    let falsePatterImage = [firstExceptionCombination_1, firstExceptionCombination_2, firstExceptionCombination_3,
                            secondExceptionCombination_1, secondExceptionCombination_2, secondExceptionCombination_3,
                            firstExceptionCombinationExplain, secondExceptionCombinationExplain]
    
    
    UI.forEach { $0.translatesAutoresizingMaskIntoConstraints = false }
    UI.forEach { view.addSubview($0) }
    truePatterImage.forEach { $0.translatesAutoresizingMaskIntoConstraints = false }
    truePatterImage.forEach { imageScrollView.addSubview($0) }
    falsePatterImage.forEach { $0.translatesAutoresizingMaskIntoConstraints = false }
    falsePatterImage.forEach { imageScrollView.addSubview($0) }
    
    
    NSLayoutConstraint.activate([
      
      backButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
      backButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
      backButton.widthAnchor.constraint(equalToConstant: 20),
      backButton.heightAnchor.constraint(equalToConstant: 20),
      
      howToPlayLable.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 40),
      howToPlayLable.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
      
      explainLabel.topAnchor.constraint(equalTo: howToPlayLable.bottomAnchor, constant: 70),
      explainLabel.centerXAnchor.constraint(equalTo: howToPlayLable.centerXAnchor),
      explainLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
      explainLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
      
      imageScrollView.topAnchor.constraint(equalTo: explainLabel.bottomAnchor, constant: 15),
      imageScrollView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 15),
      imageScrollView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -15),
      imageScrollView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -5),
      
      ///첫번째 옳은규칙 AutoLayOut
      firstCombinationExplain.topAnchor.constraint(equalTo: imageScrollView.topAnchor, constant: 30),
      firstCombinationExplain.centerXAnchor.constraint(equalTo: imageScrollView.centerXAnchor),
      
      firstCombination_2.topAnchor.constraint(equalTo: firstCombinationExplain.bottomAnchor, constant: 10),
      firstCombination_2.centerXAnchor.constraint(equalTo: firstCombinationExplain.centerXAnchor),
      firstCombination_2.widthAnchor.constraint(equalToConstant: 70),
      firstCombination_2.heightAnchor.constraint(equalToConstant: 70),
      firstCombination_1.topAnchor.constraint(equalTo: firstCombinationExplain.bottomAnchor, constant: 10),
      firstCombination_1.trailingAnchor.constraint(equalTo: firstCombination_2.leadingAnchor, constant: -15),
      firstCombination_1.widthAnchor.constraint(equalToConstant: 70),
      firstCombination_1.heightAnchor.constraint(equalToConstant: 70),
      firstCombination_3.topAnchor.constraint(equalTo: firstCombinationExplain.bottomAnchor, constant: 10),
      firstCombination_3.leadingAnchor.constraint(equalTo: firstCombination_2.trailingAnchor, constant: 15),
      firstCombination_3.widthAnchor.constraint(equalToConstant: 70),
      firstCombination_3.heightAnchor.constraint(equalToConstant: 70),
      
      ///두번째 옳은규칙 AutoLayOut
      secondCombinationExplain.topAnchor.constraint(equalTo: firstCombination_2.bottomAnchor, constant: 40),
      secondCombinationExplain.centerXAnchor.constraint(equalTo: firstCombination_2.centerXAnchor),
      
      secondCombination_2.topAnchor.constraint(equalTo: secondCombinationExplain.bottomAnchor, constant: 10),
      secondCombination_2.centerXAnchor.constraint(equalTo: secondCombinationExplain.centerXAnchor),
      secondCombination_2.widthAnchor.constraint(equalToConstant: 70),
      secondCombination_2.heightAnchor.constraint(equalToConstant: 70),
      secondCombination_1.topAnchor.constraint(equalTo: secondCombinationExplain.bottomAnchor, constant: 10),
      secondCombination_1.trailingAnchor.constraint(equalTo: secondCombination_2.leadingAnchor, constant: -15),
      secondCombination_1.widthAnchor.constraint(equalToConstant: 70),
      secondCombination_1.heightAnchor.constraint(equalToConstant: 70),
      secondCombination_3.topAnchor.constraint(equalTo: secondCombinationExplain.bottomAnchor, constant: 10),
      secondCombination_3.leadingAnchor.constraint(equalTo: secondCombination_2.trailingAnchor, constant: 15),
      secondCombination_3.widthAnchor.constraint(equalToConstant: 70),
      secondCombination_3.heightAnchor.constraint(equalToConstant: 70),
      
      ///세번째 옳은규칙 AutoLayOut
      thirdCombinationExplain.topAnchor.constraint(equalTo: secondCombination_2.bottomAnchor, constant: 40),
      thirdCombinationExplain.centerXAnchor.constraint(equalTo: secondCombination_2.centerXAnchor),
      
      thirdCombination_2.topAnchor.constraint(equalTo: thirdCombinationExplain.bottomAnchor, constant: 10),
      thirdCombination_2.centerXAnchor.constraint(equalTo: thirdCombinationExplain.centerXAnchor),
      thirdCombination_2.widthAnchor.constraint(equalToConstant: 70),
      thirdCombination_2.heightAnchor.constraint(equalToConstant: 70),
      thirdCombination_1.topAnchor.constraint(equalTo: thirdCombinationExplain.bottomAnchor, constant: 10),
      thirdCombination_1.trailingAnchor.constraint(equalTo: thirdCombination_2.leadingAnchor, constant: -15),
      thirdCombination_1.widthAnchor.constraint(equalToConstant: 70),
      thirdCombination_1.heightAnchor.constraint(equalToConstant: 70),
      thirdCombination_3.topAnchor.constraint(equalTo: thirdCombinationExplain.bottomAnchor, constant: 10),
      thirdCombination_3.leadingAnchor.constraint(equalTo: thirdCombination_2.trailingAnchor, constant: 15),
      thirdCombination_3.widthAnchor.constraint(equalToConstant: 70),
      thirdCombination_3.heightAnchor.constraint(equalToConstant: 70),
      
      ///네번째 옳은규칙 AutoLayOut
      fourthCombinationExplain.topAnchor.constraint(equalTo: thirdCombination_2.bottomAnchor, constant: 40),
      fourthCombinationExplain.centerXAnchor.constraint(equalTo: thirdCombination_2.centerXAnchor),
      
      fourthCombination_2.topAnchor.constraint(equalTo: fourthCombinationExplain.bottomAnchor, constant: 10),
      fourthCombination_2.centerXAnchor.constraint(equalTo: fourthCombinationExplain.centerXAnchor),
      fourthCombination_2.widthAnchor.constraint(equalToConstant: 70),
      fourthCombination_2.heightAnchor.constraint(equalToConstant: 70),
      fourthCombination_1.topAnchor.constraint(equalTo: fourthCombinationExplain.bottomAnchor, constant: 10),
      fourthCombination_1.trailingAnchor.constraint(equalTo: fourthCombination_2.leadingAnchor, constant: -15),
      fourthCombination_1.widthAnchor.constraint(equalToConstant: 70),
      fourthCombination_1.heightAnchor.constraint(equalToConstant: 70),
      fourthCombination_3.topAnchor.constraint(equalTo: fourthCombinationExplain.bottomAnchor, constant: 10),
      fourthCombination_3.leadingAnchor.constraint(equalTo: fourthCombination_2.trailingAnchor, constant: 15),
      fourthCombination_3.widthAnchor.constraint(equalToConstant: 70),
      fourthCombination_3.heightAnchor.constraint(equalToConstant: 70),
      
      ///다섯번째 옳은규칙 AutoLayOut
      fifthCombinationExplain.topAnchor.constraint(equalTo: fourthCombination_2.bottomAnchor, constant: 40),
      fifthCombinationExplain.centerXAnchor.constraint(equalTo: fourthCombination_2.centerXAnchor),
      
      fifthCombination_2.topAnchor.constraint(equalTo: fifthCombinationExplain.bottomAnchor, constant: 10),
      fifthCombination_2.centerXAnchor.constraint(equalTo: fifthCombinationExplain.centerXAnchor),
      fifthCombination_2.widthAnchor.constraint(equalToConstant: 70),
      fifthCombination_2.heightAnchor.constraint(equalToConstant: 70),
      fifthCombination_1.topAnchor.constraint(equalTo: fifthCombinationExplain.bottomAnchor, constant: 10),
      fifthCombination_1.trailingAnchor.constraint(equalTo: fifthCombination_2.leadingAnchor, constant: -15),
      fifthCombination_1.widthAnchor.constraint(equalToConstant: 70),
      fifthCombination_1.heightAnchor.constraint(equalToConstant: 70),
      fifthCombination_3.topAnchor.constraint(equalTo: fifthCombinationExplain.bottomAnchor, constant: 10),
      fifthCombination_3.leadingAnchor.constraint(equalTo: fifthCombination_2.trailingAnchor, constant: 15),
      fifthCombination_3.widthAnchor.constraint(equalToConstant: 70),
      fifthCombination_3.heightAnchor.constraint(equalToConstant: 70),
      
      /// 파티션
      partitionLineLabel.topAnchor.constraint(equalTo: fifthCombination_2.bottomAnchor, constant: 40),
      partitionLineLabel.centerXAnchor.constraint(equalTo: fifthCombination_2.centerXAnchor),
      partitionLineLabel.widthAnchor.constraint(equalToConstant: view.frame.width * 0.9),
      partitionLineLabel.heightAnchor.constraint(equalToConstant: 7),
      
      ///첫번째 틀린규칙 AutoLayOut
      firstExceptionCombinationExplain.topAnchor.constraint(equalTo: partitionLineLabel.bottomAnchor, constant: 10),
      firstExceptionCombinationExplain.centerXAnchor.constraint(equalTo: partitionLineLabel.centerXAnchor),
      
      firstExceptionCombination_2.topAnchor.constraint(equalTo: firstExceptionCombinationExplain.bottomAnchor, constant: 10),
      firstExceptionCombination_2.centerXAnchor.constraint(equalTo: firstExceptionCombinationExplain.centerXAnchor),
      firstExceptionCombination_2.widthAnchor.constraint(equalToConstant: 70),
      firstExceptionCombination_2.heightAnchor.constraint(equalToConstant: 70),
      firstExceptionCombination_1.topAnchor.constraint(equalTo: firstExceptionCombinationExplain.bottomAnchor, constant: 10),
      firstExceptionCombination_1.trailingAnchor.constraint(equalTo: firstExceptionCombination_2.leadingAnchor, constant: -15),
      firstExceptionCombination_1.widthAnchor.constraint(equalToConstant: 70),
      firstExceptionCombination_1.heightAnchor.constraint(equalToConstant: 70),
      firstExceptionCombination_3.topAnchor.constraint(equalTo: firstExceptionCombinationExplain.bottomAnchor, constant: 10),
      firstExceptionCombination_3.leadingAnchor.constraint(equalTo: firstExceptionCombination_2.trailingAnchor, constant: 15),
      firstExceptionCombination_3.widthAnchor.constraint(equalToConstant: 70),
      firstExceptionCombination_3.heightAnchor.constraint(equalToConstant: 70),
      
      ///두번째 틀린규칙 AutoLayOut
      secondExceptionCombinationExplain.topAnchor.constraint(equalTo: firstExceptionCombination_2.bottomAnchor, constant: 50),
      secondExceptionCombinationExplain.centerXAnchor.constraint(equalTo: firstExceptionCombination_2.centerXAnchor),
      
      secondExceptionCombination_2.topAnchor.constraint(equalTo: secondExceptionCombinationExplain.bottomAnchor, constant: 10),
      secondExceptionCombination_2.bottomAnchor.constraint(equalTo: imageScrollView.bottomAnchor, constant: -20),
      secondExceptionCombination_2.centerXAnchor.constraint(equalTo: secondExceptionCombinationExplain.centerXAnchor),
      secondExceptionCombination_2.widthAnchor.constraint(equalToConstant: 70),
      secondExceptionCombination_2.heightAnchor.constraint(equalToConstant: 70),
      secondExceptionCombination_1.topAnchor.constraint(equalTo: secondExceptionCombinationExplain.bottomAnchor, constant: 10),
      secondExceptionCombination_1.trailingAnchor.constraint(equalTo: secondExceptionCombination_2.leadingAnchor, constant: -15),
      secondExceptionCombination_1.widthAnchor.constraint(equalToConstant: 70),
      secondExceptionCombination_1.heightAnchor.constraint(equalToConstant: 70),
      secondExceptionCombination_3.topAnchor.constraint(equalTo: secondExceptionCombinationExplain.bottomAnchor, constant: 10),
      secondExceptionCombination_3.leadingAnchor.constraint(equalTo: secondExceptionCombination_2.trailingAnchor, constant: 15),
      secondExceptionCombination_3.widthAnchor.constraint(equalToConstant: 70),
      secondExceptionCombination_3.heightAnchor.constraint(equalToConstant: 70),
      
//      scoreResetButton.topAnchor.constraint(equalTo: secondExceptionCombination_2.bottomAnchor, constant: 10),
//      scoreResetButton.bottomAnchor.constraint(equalTo: imageScrollView.bottomAnchor, constant: -20),
//      scoreResetButton.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
//      scoreResetButton.widthAnchor.constraint(equalToConstant: imageScrollView.bounds.width),
      
    ])
    
    
    backButton.backgroundColor = .clear
    backButton.tintColor = .black
    backButton.contentMode = .scaleAspectFit
    if #available(iOS 13.0, *) {
      backButton.setPreferredSymbolConfiguration(.init(pointSize: 30), forImageIn: .normal)
    } else {

    }
    if #available(iOS 13.0, *) {
      backButton.setImage(UIImage(systemName: "multiply"), for: .normal)
    } else {
      backButton.setImage(UIImage(named: "multiply"), for: .normal)
    }
    backButton.addTarget(self, action: #selector(dissMissFunc), for: .touchUpInside)
    
    
    howToPlayLable.text = "How To Play"
    howToPlayLable.font = .italicSystemFont(ofSize: 42)
    howToPlayLable.textColor = #colorLiteral(red: 0.2605174184, green: 0.2605243921, blue: 0.260520637, alpha: 1)
    howToPlayLable.textAlignment = .center
    
    explainLabel.numberOfLines = 0
    explainLabel.text = "주어진 시간동안 아래 규칙에 \n맞는 모양을 찾아 점수를 얻으면 됩니다. \n세가지 모양과 색깔과 패턴을 \n아래 규칙대로 찾아보세요."
    explainLabel.font = .systemFont(ofSize: 22)
    let attrString = NSMutableAttributedString(string: explainLabel.text!)
    let paragraphStyle = NSMutableParagraphStyle()
    paragraphStyle.lineSpacing = 8
    attrString.addAttribute(NSAttributedString.Key.paragraphStyle, value: paragraphStyle, range: NSMakeRange(0, attrString.length))
    explainLabel.attributedText = attrString
    explainLabel.textAlignment = .center
    
    imageScrollView.frame = CGRect(x: 0, y: 0, width: (view.frame.width - 32), height: (view.frame.height * 1.5))
    imageScrollView.backgroundColor = .clear
    imageScrollView.layer.cornerRadius = 10
  
    /// 첫번째 규칙
    firstCombinationExplain.text = "(모양이 같고, 색깔이 다르고, 패턴이 같다)"
    firstCombinationExplain.font = .systemFont(ofSize: 15)
    
    let firstCombinationImage = [firstCombination_1, firstCombination_2, firstCombination_3]
    
    firstCombinationImage.forEach { $0.contentMode = .scaleAspectFit }
    firstCombinationImage.forEach { $0.backgroundColor = .clear }
    
    firstCombination_1.image = UIImage(named: "circle_red_line")
    firstCombination_2.image = UIImage(named: "circle_blue_line")
    firstCombination_3.image = UIImage(named: "circle_yellow_line")
    
    /// 두번째 규칙
    secondCombinationExplain.text = "(모양이 다르고, 색깔이 같고, 패턴이 같다)"
    secondCombinationExplain.font = .systemFont(ofSize: 15)
    
    let secondCombinationImage = [secondCombination_1, secondCombination_2, secondCombination_3]
    
    secondCombinationImage.forEach { $0.contentMode = .scaleAspectFit }
    secondCombinationImage.forEach { $0.backgroundColor = .clear }

    secondCombination_1.image = UIImage(named: "circle_blue_solid")
    secondCombination_2.image = UIImage(named: "rectangle_blue_solid")
    secondCombination_3.image = UIImage(named: "triangle_blue_solid")
    
    /// 세번째 규칙
    thirdCombinationExplain.text = "(모양이 다르고, 색깔이 다르고, 패턴이 다르다)"
    thirdCombinationExplain.font = .systemFont(ofSize: 15)
    
    let thirdCombinationImage = [thirdCombination_1, thirdCombination_2, thirdCombination_3]
    
    thirdCombinationImage.forEach { $0.contentMode = .scaleAspectFit }
    thirdCombinationImage.forEach { $0.backgroundColor = .clear }
    
    thirdCombination_1.image = UIImage(named: "circle_yellow_blank")
    thirdCombination_2.image = UIImage(named: "rectangle_red_line")
    thirdCombination_3.image = UIImage(named: "triangle_blue_solid")
    
    /// 네번째 규칙
    fourthCombinationExplain.text = "(모양이 같고, 색깔이 같고, 패턴이 다르다)"
    fourthCombinationExplain.font = .systemFont(ofSize: 15)
    
    let fourthCombinationImage = [fourthCombination_1, fourthCombination_2, fourthCombination_3]
    
    fourthCombinationImage.forEach { $0.contentMode = .scaleAspectFit }
    fourthCombinationImage.forEach { $0.backgroundColor = .clear }
    
    fourthCombination_1.image = UIImage(named: "triangle_red_blank")
    fourthCombination_2.image = UIImage(named: "triangle_red_line")
    fourthCombination_3.image = UIImage(named: "triangle_red_solid")
    
    /// 다섯번째 규칙
    fifthCombinationExplain.text = "(모양이 같고, 색깔이 다르고, 패턴이 다르다)"
    fifthCombinationExplain.font = .systemFont(ofSize: 15)
    
    let fifthCombinationImage = [fifthCombination_1, fifthCombination_2, fifthCombination_3]
    
    fifthCombinationImage.forEach { $0.contentMode = .scaleAspectFit }
    fifthCombinationImage.forEach { $0.backgroundColor = .clear }
    
    fifthCombination_1.image = UIImage(named: "circle_yellow_blank")
    fifthCombination_2.image = UIImage(named: "circle_red_line")
    fifthCombination_3.image = UIImage(named: "circle_blue_solid")
    
    partitionLineLabel.backgroundColor = #colorLiteral(red: 0.4756349325, green: 0.4756467342, blue: 0.4756404161, alpha: 1)
  
    /// 첫번째 틀린규칙
    firstExceptionCombinationExplain.text = "(불가능: 모양이 같고, 색깔이 다르고, \n패턴이 다르지 않다)"
    firstExceptionCombinationExplain.textAlignment = .center
    firstExceptionCombinationExplain.numberOfLines = 0
    firstExceptionCombinationExplain.font = .systemFont(ofSize: 15)
    
    let firstExceptionCombinationImage = [firstExceptionCombination_1, firstExceptionCombination_2, firstExceptionCombination_3]
    
    firstExceptionCombinationImage.forEach { $0.contentMode = .scaleAspectFit }
    firstExceptionCombinationImage.forEach { $0.backgroundColor = .clear }

    firstExceptionCombination_1.image = UIImage(named: "triangle_red_line")
    firstExceptionCombination_2.image = UIImage(named: "triangle_blue_line")
    firstExceptionCombination_3.image = UIImage(named: "triangle_yellow_solid")
    
    ///두번째 틀린규칙
    secondExceptionCombinationExplain.text = "(불가능: 모양이 다르고, 색깔이 다르지 않고,\n패턴이 다르다)"
    secondExceptionCombinationExplain.textAlignment = .center
    secondExceptionCombinationExplain.numberOfLines = 0
    secondExceptionCombinationExplain.font = .systemFont(ofSize: 15)
    
    let secondExceptionCombinationImage = [secondExceptionCombination_1, secondExceptionCombination_2, secondExceptionCombination_3]
    
    secondExceptionCombinationImage.forEach { $0.contentMode = .scaleAspectFit }
    secondExceptionCombinationImage.forEach { $0.backgroundColor = .clear }

    secondExceptionCombination_1.image = UIImage(named: "rectangle_blue_line")
    secondExceptionCombination_2.image = UIImage(named: "circle_blue_solid")
    secondExceptionCombination_3.image = UIImage(named: "triangle_red_blank")
    
  }
  
  @objc private func dissMissFunc() {
    dismiss(animated: true)
  }
}

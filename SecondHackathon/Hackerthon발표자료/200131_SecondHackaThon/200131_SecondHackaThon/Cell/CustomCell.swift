//
//  CustomCell.swift
//  200131_SecondHackaThon
//
//  Created by Demian on 2020/01/31.
//  Copyright © 2020 Demian. All rights reserved.
//

import UIKit

//protocol answerAnimationDelegate: class {
//  func answerAnimation(_ customCell: CustomCell)
//}

class CustomCell: UICollectionViewCell {
  static let identifier = "CustomCell"
  private let imageView = UIImageView()
//  weak var delegate: answerAnimationDelegate?

  override var isSelected: Bool {
    didSet {
      isSelected ? selectedCells() : deSelectedCells()
    }
  }
  
  private func selectedCells() {
    self.contentView.layer.borderWidth = 4
    self.contentView.layer.borderColor = #colorLiteral(red: 0.1298420429, green: 0.1298461258, blue: 0.1298439503, alpha: 1)
    self.contentView.layer.backgroundColor = #colorLiteral(red: 0.7540688515, green: 0.7540867925, blue: 0.7540771365, alpha: 1)
    self.transform = .init(scaleX: 1.13, y: 1.13)
  }
  private func deSelectedCells() {
    self.contentView.layer.borderWidth = 0
    self.contentView.layer.backgroundColor = #colorLiteral(red: 0.9999071956, green: 1, blue: 0.999881804, alpha: 1)
    self.transform = .identity
  }
  
  func answerSelectCells() {
    UIView.animateKeyframes(withDuration: 0.3, delay: 0.0, options: [], animations: {
      UIView.addKeyframe(withRelativeStartTime: 0.0, relativeDuration: 0.7) {
        self.transform = .init(scaleX: 1.5, y: 1.5)
        self.contentView.backgroundColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        self.contentView.alpha = 0.0
      }
      UIView.addKeyframe(withRelativeStartTime: 0.55, relativeDuration: 0.3) {
        self.transform = .identity
        self.contentView.backgroundColor = .white
        self.contentView.alpha = 1.0
      }
    })
    
  }

  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    contentView.backgroundColor = .white
    contentView.layer.cornerRadius = 7
    setupViews()
    setupUI()
  }
   
  private func setupViews() {
    self.clipsToBounds = true
    layer.cornerRadius = 7
    imageView.contentMode = .scaleAspectFit
    contentView.addSubview(imageView)
  }
  
  private func setupUI() {
    imageView.translatesAutoresizingMaskIntoConstraints = false
    NSLayoutConstraint.activate([
      imageView.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
      imageView.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
      imageView.widthAnchor.constraint(equalTo: contentView.widthAnchor, multiplier: 0.55),
      imageView.heightAnchor.constraint(equalTo: contentView.heightAnchor, multiplier: 0.55),
    ])
  }
  
  func configure(image: UIImage?) {
    imageView.image = image
  }
  
//  func answerAnimation(_ customCell: CustomCell) {
//    delegate?.answerAnimation(self)
//  }
  
}

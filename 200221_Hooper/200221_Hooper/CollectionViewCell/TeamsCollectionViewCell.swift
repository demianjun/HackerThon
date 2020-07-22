//
//  TeamsCollectionViewCell.swift
//  200221_Hooper
//
//  Created by Demian on 2020/02/22.
//  Copyright © 2020 Demian. All rights reserved.
//

import UIKit

class TeamsCollectionViewCell: UICollectionViewCell {
  
  let logoImage = UIImageView()
  let bottomBar = UIView()
  
  override var isSelected: Bool {
    didSet {
      isSelected ? selectedCell() : deSelectedCell()
    }
  }
  func selectedCell() {
    self.bottomBar.isHidden = false
    
  }
  func deSelectedCell() {
    self.bottomBar.isHidden = true
  }
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    contentView.addSubview(logoImage)
    contentView.addSubview(bottomBar)
    contentView.backgroundColor = .clear
    updateConstraints()
  }

  
//  func configure(logo: String) {
//    logoImage.image = nil
//    guard let logoUrl = URL(string: logo) else {return print("url error")}
//    DispatchQueue.global().async { [weak self] in
//      guard let data = try? Data(contentsOf: logoUrl) else { return }
//      DispatchQueue.main.async {
//        let image = UIImage(data: data)
//        ImageSingleton.shared.images[logo] = image
//      }
//    }
//    guard let image = ImageSingleton.shared.images[logo] else { return }
//    logoImage.image = image
//  }
  
  
//  func configure(logo: String) {
//    logoImage.image = nil
//    if let image = ImageSingleton.shared.images[logo] {
//      logoImage.image = image
//    } else {
//      guard let logoUrl = URL(string: logo) else {return print("url error")}
//      DispatchQueue.global().async { [weak self] in
//        guard let data = try? Data(contentsOf: logoUrl) else { return }
//        DispatchQueue.main.async {
//          let image = UIImage(data: data)
//          self?.logoImage.image = image
//          ImageSingleton.shared.images[logo] = image
//        }
//      }
//    }
//  }
  
  override func updateConstraints() {
    super.updateConstraints()
    
    let standardView = contentView.safeAreaLayoutGuide
    
    logoImage.translatesAutoresizingMaskIntoConstraints = false
    logoImage.centerYAnchor.constraint(equalTo: standardView.centerYAnchor).isActive = true
    logoImage.centerXAnchor.constraint(equalTo: standardView.centerXAnchor).isActive = true
    logoImage.heightAnchor.constraint(equalTo: standardView.heightAnchor, multiplier: 0.85).isActive = true
    logoImage.widthAnchor.constraint(equalTo: standardView.widthAnchor, multiplier: 0.85).isActive = true
    
    bottomBar.translatesAutoresizingMaskIntoConstraints = false
    bottomBar.widthAnchor.constraint(equalTo: standardView.widthAnchor).isActive = true
    bottomBar.heightAnchor.constraint(equalTo: standardView.heightAnchor, multiplier: 0.025).isActive = true
    bottomBar.centerXAnchor.constraint(equalTo: standardView.centerXAnchor).isActive = true
    bottomBar.topAnchor.constraint(equalTo: standardView.bottomAnchor).isActive = true
    
    logoImage.contentMode = .scaleAspectFit
    bottomBar.backgroundColor = #colorLiteral(red: 0.2605174184, green: 0.2605243921, blue: 0.260520637, alpha: 1)
    bottomBar.layer.cornerRadius = contentView.frame.height * 0.0125
    bottomBar.isHidden = true
  
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
}


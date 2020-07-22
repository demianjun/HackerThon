//
//  PlayersTableViewCell.swift
//  200221_Hooper
//
//  Created by Demian on 2020/02/22.
//  Copyright © 2020 Demian. All rights reserved.
//

import UIKit

class PlayersTableViewCell: UITableViewCell {
  
  let playerName = UILabel()
  let selectImage = UIImageView()
  
//  override func setSelected(_ selected: Bool, animated: Bool) {
//    super.setSelected(selected, animated: animated)
//    print(selected)
//  }
  
  override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
    updateConstraints()
    contentView.backgroundColor = .clear
    self.selectionStyle = .none
    
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  override func updateConstraints() {
    super.updateConstraints()
    
    contentView.addSubview(selectImage)
    contentView.addSubview(playerName)
    
    playerName.translatesAutoresizingMaskIntoConstraints = false
    selectImage.translatesAutoresizingMaskIntoConstraints = false
    NSLayoutConstraint.activate([
      playerName.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
      playerName.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
      
      selectImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
      selectImage.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
      selectImage.heightAnchor.constraint(equalTo: contentView.heightAnchor, multiplier: 1.0),
      
//      selectImage.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: 20),
//      selectImage.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
//      selectImage.widthAnchor.constraint(equalToConstant: contentView.bounds.width * 0.35),
//      selectImage.heightAnchor.constraint(equalToConstant: contentView.bounds.height * 1.4),
    ])
    playerName.font = .italicSystemFont(ofSize: 25)
    playerName.textColor = .black
    playerName.textAlignment = .center
    
    selectImage.image = UIImage(named: "selectMark")
    selectImage.contentMode = .scaleAspectFit
    selectImage.alpha = 0.0
//    selectImage.isHidden = true
    //    selectImage.image = UIImage(named: "ball1")
    //    selectImage.clipsToBounds = true
  }
}

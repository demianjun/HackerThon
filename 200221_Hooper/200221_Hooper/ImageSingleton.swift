//
//  ImageSingleton.swift
//  200221_Hooper
//
//  Created by Demian on 2020/02/25.
//  Copyright © 2020 Demian. All rights reserved.
//

import UIKit

class ImageSingleton {
  static let shared = ImageSingleton()
  private init() {}
  
  var images = [String: UIImage]()
}

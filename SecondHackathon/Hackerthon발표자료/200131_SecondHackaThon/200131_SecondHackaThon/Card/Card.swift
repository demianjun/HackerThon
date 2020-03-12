//
//  Card.swift
//  200131_SecondHackaThon
//
//  Created by Demian on 2020/01/31.
//  Copyright © 2020 Demian. All rights reserved.
//

import Foundation
import UIKit

struct Card {
  let shape: Shape
  let state: State
  let color: Color
  
  enum Shape: String {
    case circle
    case rectangle
    case triangle
  }
  
  enum State: String {
    case blank
    case line
    case solid
  }
  
  enum Color: String {
    case blue
    case red
    case yellow
  }
  
  var imageName: String {
    get {
      self.shape.rawValue + "_" + self.color.rawValue + "_" + self.state.rawValue
    }
  }
}

//let card = Card(shape: .circle, state: .line, color: .blue)
//let imageName = card.imageName

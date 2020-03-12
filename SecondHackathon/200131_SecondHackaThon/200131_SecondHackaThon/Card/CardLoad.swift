//
//  CardLoad.swift
//  200131_SecondHackaThon
//
//  Created by Demian on 2020/01/31.
//  Copyright © 2020 Demian. All rights reserved.
//

import Foundation
import UIKit

struct CardLoad {
  
  static let cardList: [Card] = [
    Card(shape: .circle, state: .blank, color: .blue),
    Card(shape: .circle, state: .blank, color: .red),
    Card(shape: .circle, state: .blank, color: .yellow),
    Card(shape: .circle, state: .line, color: .blue),
    Card(shape: .circle, state: .line, color: .red),
    Card(shape: .circle, state: .line, color: .yellow),
    Card(shape: .circle, state: .solid, color: .blue),
    Card(shape: .circle, state: .solid, color: .red),
    Card(shape: .circle, state: .solid, color: .yellow),
    
    Card(shape: .rectangle, state: .blank, color: .blue),
    Card(shape: .rectangle, state: .blank, color: .red),
    Card(shape: .rectangle, state: .blank, color: .yellow),
    Card(shape: .rectangle, state: .line, color: .blue),
    Card(shape: .rectangle, state: .line, color: .red),
    Card(shape: .rectangle, state: .line, color: .yellow),
    Card(shape: .rectangle, state: .solid, color: .blue),
    Card(shape: .rectangle, state: .solid, color: .red),
    Card(shape: .rectangle, state: .solid, color: .yellow),
    
    Card(shape: .triangle, state: .blank, color: .blue),
    Card(shape: .triangle, state: .blank, color: .red),
    Card(shape: .triangle, state: .blank, color: .yellow),
    Card(shape: .triangle, state: .line, color: .blue),
    Card(shape: .triangle, state: .line, color: .red),
    Card(shape: .triangle, state: .line, color: .yellow),
    Card(shape: .triangle, state: .solid, color: .blue),
    Card(shape: .triangle, state: .solid, color: .red),
    Card(shape: .triangle, state: .solid, color: .yellow),
  ]
}

//
//  Database.swift
//  200131_SecondHackaThon
//
//  Created by Demian on 2020/02/14.
//  Copyright © 2020 Demian. All rights reserved.
//

import Foundation
import UIKit
import Firebase
import FirebaseAuth
import FirebaseDatabase


class Gamedata {
  
  var ref: DatabaseReference!
  static var normal_10Rank = [(key: String, value: Int)]()
  static var normal_60Rank = [(key: String, value: Int)]()
  static var normal_120Rank = [(key: String, value: Int)]()
  
  static var hard_10Rank = [(key: String, value: Int)]()
  static var hard_60Rank = [(key: String, value: Int)]()
  static var hard_120Rank = [(key: String, value: Int)]()
  
  
  func doArrayScore() {
    self.ref = Database.database().reference()
    
    ref.child("users")
      .child("Normal")
      .child("10")
      .observeSingleEvent(of: .value) { (snapshot) in
        guard let normal_10 = snapshot.value as? [String: Int] else { return print("normal 10 return")}
        //        let normal_10Rank = normal_10.sorted { $0.value > $1.value }
        Gamedata.normal_10Rank = normal_10.sorted { $0.value > $1.value }
    }
    
    ref.child("users")
      .child("Normal")
      .child("60")
      .observeSingleEvent(of: .value) { (snapshot) in
        guard let normal_60 = snapshot.value as? [String: Int] else { return print("normal 60 return")}
        //        let normal_60Rank = normal_60.sorted { $0.value > $1.value }
        Gamedata.normal_60Rank = normal_60.sorted { $0.value > $1.value }
    }
    
    ref.child("users")
      .child("Normal")
      .child("120")
      .observeSingleEvent(of: .value) { (snapshot) in
        guard let normal_120 = snapshot.value as? [String: Int] else { return print("normal 120 return")}
        //        let normal_120Rank = normal_120.sorted { $0.value > $1.value }
        Gamedata.normal_120Rank = normal_120.sorted { $0.value > $1.value }
    }
    
    ref.child("users")
      .child("Hard")
      .child("10")
      .observeSingleEvent(of: .value) { (snapshot) in
        guard let hard_10 = snapshot.value as? [String: Int] else { return print("hard 10 return")}
        //        let hard_10Rank = hard_10.sorted { $0.value > $1.value }
        Gamedata.hard_10Rank = hard_10.sorted { $0.value > $1.value }
        
    }
    ref.child("users")
      .child("Hard")
      .child("60")
      .observeSingleEvent(of: .value) { (snapshot) in
        guard let hard_60 = snapshot.value as? [String: Int] else { return print("hard 60 return")}
        //        let hard_60Rank = hard_60.sorted { $0.value > $1.value }
        Gamedata.hard_60Rank = hard_60.sorted { $0.value > $1.value }
        
    }
    
    ref.child("users")
      .child("Hard")
      .child("120")
      .observeSingleEvent(of: .value) { (snapshot) in
        guard let hard_120 = snapshot.value as? [String: Int] else { return print("hard  120 return")}
        //        let hard_120Rank = hard_120.sorted { $0.value > $1.value }
        Gamedata.hard_120Rank = hard_120.sorted { $0.value > $1.value }
    }
  }
}


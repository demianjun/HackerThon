//
//  PlayerInfomationViewController.swift
//  200221_Hooper
//
//  Created by Demian on 2020/03/10.
//  Copyright © 2020 Demian. All rights reserved.
//

import UIKit

final class PlayerInfomationViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
      
    }
}


/*
 
 https://d2cwpp38twqe55.cloudfront.net/req/202002141/images/players/lastname+firstname두자+01.jpg
 https://d2cwpp38twqe55.cloudfront.net/req/202002141/images/players/arizatr01.jpg
 
 https://d2cwpp38twqe55.cloudfront.net/req/202002141/images/players/adamsst01.jpg
 https://d2cwpp38twqe55.cloudfront.net/req/202002141/images/players/cartevi01.jpg
 https://d2cwpp38twqe55.cloudfront.net/req/202002141/images/players/collijo01.jpg
 https://d2cwpp38twqe55.cloudfront.net/req/202002141/images/players/YoungTr01.jpg
 https://d2cwpp38twqe55.cloudfront.net/req/202002141/images/players/hunterj01.jpg
 
 
 "firstName": "Sir'Dominic",
 "lastName": "Pointer",
 "teamId": "7",
 "yearsPro": "0",
 "collegeName": "St. John's, N.Y.",
 "country": "USA",
 "playerId": "2556",
 "dateOfBirth": "1992-05-06",
 "affiliation": "St. John's (N.Y.)/USA",
 "startNba": "0",
 "heightInMeters": "1.98",
 "weightInKilograms": "87.1",
 "leagues": {
     "standard": {
         "jersey": "",
         "active": "1",
         "pos": "G-F"
 
 struct Players: Decodable {
   let fullName: String
   let teamId: String?
   let yearsPro: String?
   let collegeName: String?
   let country: String?
   let dateOfBirth: String?
 //  let dateOfBirth: Date
   let affiliation: String?
   let startNba: String?
   let heightInMeters: String?
   let weightInKilograms: String?
   let jersey: String?
   let pos: String?
 
 */

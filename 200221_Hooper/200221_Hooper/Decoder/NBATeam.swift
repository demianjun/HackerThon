//
//  NbaTeamAndPlayer.swift
//  200221_Hooper
//
//  Created by Demian on 2020/02/21.
//  Copyright © 2020 Demian. All rights reserved.
//

import Foundation

let teamData = """

{
"api":
     {
      "teams": [
      {
         "city": "Atlanta",
         "fullName": "Atlanta Hawks",
         "teamId": "1",
         "nickname": "Hawks",
         "logo": "https://upload.wikimedia.org/wikipedia/fr/e/ee/Hawks_2016.png",
         "shortName": "ATL",
         "allStar": "0",
         "nbaFranchise": "1",
         "leagues": {
             "standard": {
                 "confName": "East",
                 "divName": "Southeast"
             }
         }
     },
     {
         "city": "Boston",
         "fullName": "Boston Celtics",
         "teamId": "2",
         "nickname": "Celtics",
         "logo":"https://upload.wikimedia.org/wikipedia/fr/thumb/6/65/Celtics_de_Boston_logo.svg/1024px-Celtics_de_Boston_logo.svg.png",
         "shortName": "BOS",
         "allStar": "0",
         "nbaFranchise": "1",
         "leagues": {
             "standard": {
                 "confName": "East",
                 "divName": "Atlantic"
             }
         }
     },
     {
         "city": "Brisbane",
         "fullName": "Brisbane Bullets",
         "teamId": "3",
         "nickname": "Bullets",
         "logo": "https://upload.wikimedia.org/wikipedia/fr/thumb/1/1b/Brisbane_Bullets_1992.png/130px-Brisbane_Bullets_1992.png",
         "shortName": "BNE",
         "allStar": "0",
         "nbaFranchise": "0",
         "leagues": {
             "standard": {
                 "confName": "Intl",
                 "divName": ""
             }
         }
     },
     {
         "city": "Brooklyn",
         "fullName": "Brooklyn Nets",
         "teamId": "4",
         "nickname": "Nets",
         "logo":"https://upload.wikimedia.org/wikipedia/commons/thumb/4/44/Brooklyn_Nets_newlogo.svg/130px-Brooklyn_Nets_newlogo.svg.png",
         "shortName": "BKN",
         "allStar": "0",
         "nbaFranchise": "1",
         "leagues": {
             "standard": {
                 "confName": "East",
                 "divName": "Atlantic"
             }
         }
     },
     {
         "city": "Charlotte",
         "fullName": "Charlotte Hornets",
         "teamId": "5",
         "nickname": "Hornets",
         "logo":"https://upload.wikimedia.org/wikipedia/fr/thumb/f/f3/Hornets_de_Charlotte_logo.svg/1200px-Hornets_de_Charlotte_logo.svg.png",
         "shortName": "CHA",
         "allStar": "0",
         "nbaFranchise": "1",
         "leagues": {
             "standard": {
                 "confName": "East",
                 "divName": "Southeast"
             }
         }
     },
     {
         "city": "Chicago",
         "fullName": "Chicago Bulls",
         "teamId": "6",
         "nickname": "Bulls",
         "logo":"https://upload.wikimedia.org/wikipedia/fr/thumb/d/d1/Bulls_de_Chicago_logo.svg/1200px-Bulls_de_Chicago_logo.svg.png",
         "shortName": "CHI",
         "allStar": "0",
         "nbaFranchise": "1",
         "leagues": {
             "standard": {
                 "confName": "East",
                 "divName": "Central"
             }
         }
      }
    ]
  }
}

""".data(using: .utf8)!

struct API_team: Decodable {
  let api: Team
}

struct Team: Decodable {
  let teams:[Teams]
}

struct Teams: Decodable {
  let city: String
  let fullName: String
  let logo: String
  let nickName: String
  let shortName: String
  let confName: String
  let divName: String
  let teamId: String
  
  private enum CodingKeys: String, CodingKey {
    case city, fullName, logo, nickName = "nickname", shortName, leagues, teamId
  }
  
  private enum LeaguesKey: String, CodingKey {
    case standard
  }
  private enum StandardKeys: String, CodingKey {
    case confName, divName
  }
  
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    self.city = try container.decode(String.self, forKey: .city)
    self.fullName = try container.decode(String.self, forKey: .fullName)
    self.logo = try container.decode(String.self, forKey: .logo)
    self.nickName = try container.decode(String.self, forKey: .nickName)
    self.shortName = try container.decode(String.self, forKey: .shortName)
    self.teamId = try container.decode(String.self, forKey: .teamId)
    
    
    let leaguesContainer = try container.nestedContainer(
      keyedBy: LeaguesKey.self,
      forKey: .leagues)
    
    let standardContainer = try leaguesContainer.nestedContainer(
      keyedBy: StandardKeys.self,
      forKey: .standard)
    
    self.confName = try standardContainer.decode(String.self, forKey: .confName)
    self.divName = try standardContainer.decode(String.self, forKey: .divName)
  }
}

//func test() {
//  do
//  {
//    let temp = try JSONDecoder().decode(Teams.self, from: teamData)
//  print(temp)
//
//  } catch {
//    print(error)
//  }
//}






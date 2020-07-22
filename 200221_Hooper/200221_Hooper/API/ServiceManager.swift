//
//  ServiceManager.swift
//  200221_Hooper
//
//  Created by Demian on 2020/02/21.
//  Copyright © 2020 Demian. All rights reserved.
//

import Foundation
import UIKit

final class ServiceManager {
  
  static let shared = ServiceManager()
  
  var nbaTeamsData: [Teams] = []
  var nbaPlayersData: [Players] = []
  
  
  func nbaData(completion: @escaping ()->()) {
    let headers = [
      "x-rapidapi-host": "api-nba-v1.p.rapidapi.com",
      "x-rapidapi-key": "c6ce7feb58mshccf4fd7022b6f7ep1edb93jsn8073b2ca132f"
    ]
    
    let request_player = NSMutableURLRequest(url: NSURL(string: "https://api-nba-v1.p.rapidapi.com/players/league/standard")! as URL,
                                             cachePolicy: .useProtocolCachePolicy,
                                             timeoutInterval: 10.0)
    
    let request_team = NSMutableURLRequest(url: NSURL(string: "https://api-nba-v1.p.rapidapi.com/teams/league/standard")! as URL,
                                           cachePolicy: .useProtocolCachePolicy,
                                           timeoutInterval: 10.0)
    
    request_player.httpMethod = "GET"
    request_team.httpMethod = "GET"
    request_player.allHTTPHeaderFields = headers
    request_team.allHTTPHeaderFields = headers
    
    let session = URLSession.shared
    let dataTask_team = session.dataTask(with: request_team as URLRequest, completionHandler: { (data, response, error) in
      if error != nil {
        print(error!)
      } else {
        guard let _ = response as? HTTPURLResponse else {return}
      }
//      guard let tempData = data else {return print("data return")}
//      guard let teams = try? JSONDecoder().decode(API_team.self, from: tempData) else { return print("error")} // 실제 API
      
      guard let teams = try? JSONDecoder().decode(API_team.self, from: teamData) else { return print("decoder error")} // dummy data
      let nbaTeams = teams.api.teams.filter{ $0.divName != "" && $0.logo != ""}
      self.nbaTeamsData = nbaTeams
      
      for i in 0..<self.nbaTeamsData.count {
        guard var logoUrl = URL(string: self.nbaTeamsData[i].logo) else { return print("logo url error") }
        if self.nbaTeamsData[i].logo == "https://upload.wikimedia.org/wikipedia/en/thumb/1/1e/Detroit_Pistons_logo.svg/1200px-Detroit_Pistons_logo.svg.png" {
          logoUrl = URL(string: "https://upload.wikimedia.org/wikipedia/sco/thumb/1/1e/Detroit_Pistons_logo.svg/1200px-Detroit_Pistons_logo.svg.png")!
        } else if self.nbaTeamsData[i].logo == "https://upload.wikimedia.org/wikipedia/fr/archive/d/d6/20161212034849%21Wizards2015.png"{
          logoUrl = URL(string: "https://upload.wikimedia.org/wikipedia/sco/thumb/0/02/Washington_Wizards_logo.svg/1024px-Washington_Wizards_logo.svg.png")!
        }
        guard let logoData = try? Data(contentsOf: logoUrl) else { return print("logo data error")}
        guard let image = UIImage(data: logoData) else { return print("logo image error") }
        ImageSingleton.shared.images[self.nbaTeamsData[i].logo] = image
      }
 
      if self.nbaTeamsData.count == ImageSingleton.shared.images.count {
        DispatchQueue.main.async {
          completion()
        }
      }
      
      /*
       guard let teamData = try? JSONSerialization.jsonObject(with: tempData, options: []) as? [String: [String: Any]] else {return print("Serialization")}
       guard let teams = teamData["api"]?["teams"] else {return print("teams fail")}
       guard let data = try? JSONSerialization.data(withJSONObject: teams, options: []) else { return }
       guard let jsonDecoderNBATeam = try? JSONDecoder().decode([Teams].self, from: data) else {return print("decoder return")}
       dump(jsonDecoderNBATeam)
       */
    })
    
    let dataTask_player = session.dataTask(with: request_player as URLRequest, completionHandler: { (data, response, error) in
      if error != nil {
        //        print(error!)
      } else {
        //        let httpResponse = response as? HTTPURLResponse
        //        print(httpResponse!)
      }
      guard let playerData = data else {return}
      guard let players = try? JSONDecoder().decode(API_player.self, from: playerData) else { return print("players fail")} // 실제 API
//      guard let players = try? JSONDecoder().decode(API_player.self, from: playerDummyData) else { return print("players fail")} // dummy data
      
      let nbaPlayers = players.api.players.filter { $0.teamId != nil }
      self.nbaPlayersData = nbaPlayers
    })
    dataTask_team.resume()
    dataTask_player.resume()
  }
}


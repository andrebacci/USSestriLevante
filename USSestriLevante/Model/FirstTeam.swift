//
//  FirstTeam.swift
//  USSestriLevante
//
//  Created by Andrea Bacigalupo on 09/04/2019.
//  Copyright © 2019 Andrea Bacigalupo. All rights reserved.
//

import Foundation

class FirstTeam {
    var season: String = ""
    var players = [Player]()
    var staff = [Staff]()
    
    init?(json: [String: Any]) {
        season = (json["Season"] as? String)!
        
        for item in (json["Players"] as? [[String: Any]])! {
            if let player = Player(json: item) {
                players.append(player)
            }
        }
        
        for item in (json["Staff"] as? [[String: Any]])! {
            if let staffMember = Staff(json: item) {
                staff.append(staffMember)
            }
        }
        
        var andre = 0
    }
}

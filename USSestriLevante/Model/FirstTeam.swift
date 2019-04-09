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
    
    init?(json: [String: Any]) {
        season = (json["Season"] as? String)!
        
        let team = json["Players"]
    }
}

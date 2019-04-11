//
//  ViewController.swift
//  USSestriLevante
//
//  Created by Andrea Bacigalupo on 09/04/2019.
//  Copyright © 2019 Andrea Bacigalupo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    // Method that deserialize json
    @IBAction func load(_ sender: Any) {
        let urlJson = "http://www.usdsestrilevante.it/app_ios/json/firstTeam.json"
        let url = URL(string: urlJson)
        
        _ = URLSession.shared.dataTask(with: url!) {(data, response, error) in
            if let data = data {
                do {
                    let jsonParsed = try JSONSerialization.jsonObject(with: data, options: [])
                    print(jsonParsed)
                    
                    guard let result = jsonParsed as? [[String: Any]] else {
                        return
                    }
                    
                    for item in result {
                        let firstTeam = FirstTeam(json: item)
                    }
                } catch {
                    print(error)
                }
            }
        }.resume()
    }
}


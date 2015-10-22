//
//  ViewController.swift
//  MusicEvents
//
//  Created by Jeffrey Haberle on 10/21/15.
//  Copyright © 2015 Rocketmade. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON


class ViewController: UIViewController {
    var objArray = [NSDictionary]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       Alamofire.request(.GET, "http:api.jambase.com/events", parameters: ["zipcode": "84101","page": "0","api_key": "59btb7tn9wfd4khqcwkpag66"]).responseJSON { response in debugPrint(response)
      
            if let json = response.result.value{
                print(json)
            }
        
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


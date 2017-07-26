//
//  ViewController.swift
//  SwiftDemo
//
//  Created by Kuldeep on 26/07/17.
//  Copyright © 2017 Markelytics Ind pvt ltd. All rights reserved.
//

import UIKit
import MarkelyticsSurvey.SurveyViewController

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func OnClick(_ sender: UIButton) {
        let dict=NSMutableDictionary()
        dict.setObject("test", forKey: "test" as NSCopying!)
        let viewController:UIViewController?=SurveyViewController.startSurvey(withKey:<Enter your key>, setColor:UIColor.blue,setPosition:MKSurveyViewPosition.MKUISmall, setMemberID:"test", setDeviceID: "test", setExtraParameter:dict) { (point, transactionId, Status) in
            if let mpoints=point{
                print("points>>>"+mpoints)
            }else{
                print("No point present")
            }
            
            if let mtxID=transactionId{
                print("TX ID>>>"+mtxID)
            }else{
                print("No TX id present")
            }
            if let mstatus=Status{
                print("Status >>>"+mstatus);
            }
            else{
                print("unable to get status!")
            }
        }
        self.present(viewController!, animated: true, completion: nil)

    }

}


//
//  ViewController.swift
//  SurveySDkDemo
//
//  Created by kuldeep on 22/01/21.
//  Copyright © 2021 markelytics. All rights reserved.
//

import UIKit
import SurveySdk

class ViewController: UIViewController {

    @IBOutlet weak var memberID: UITextField!
    @IBOutlet weak var apiKey: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onSubmit(_ sender: Any) {
        
        SurveyManager.setup(apiKey: apiKey.text ?? "",userID: memberID.text)
        let storyBoard = UIStoryboard.init(name: "Main", bundle: nil)
        let surveyDetails = storyBoard.instantiateViewController(withIdentifier: "SurveyListViewController") as! SurveyListViewController
        self.present(surveyDetails, animated: true, completion: {
          print("presented")
        })
    }
    
}


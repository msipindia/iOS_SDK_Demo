//
//  SurveyDetailsViewController.swift
//  SurveySDkDemo
//
//  Created by kuldeep on 27/01/21.
//  Copyright © 2021 markelytics. All rights reserved.
//

import UIKit
import SurveySdk
class SurveyDetailsViewController: UIViewController {
    @IBOutlet weak var aiView: SurveyView!
    var surveyID:Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        aiView.delegate = self
        aiView.loadSurvey(with: surveyID!)
        // Do any additional setup after loading the view.
    }

    @IBAction func close(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
}


extension SurveyDetailsViewController:SurveyViewDelegate{
    func userDidCancel() {
        self.showToast(message: "userDidCancel called", font: UIFont.systemFont(ofSize: 17))
    }
    
    
    func surveyDidComplete(with status: String,point:Int,transactionId: String) {
        self.showToast(message: "got Status: \(status) transactionId: \(transactionId) point:\(point)", font: UIFont.systemFont(ofSize: 17))
    }
    
    func onError(error: Error) {
        showToast(message: "got Error with \(error.localizedDescription) ", font: UIFont.systemFont(ofSize: 17))
        self.dismiss(animated: true, completion: nil)
    }

    
    
}

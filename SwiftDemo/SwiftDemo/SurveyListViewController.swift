//
//  SurveyListViewController.swift
//  SurveySDkDemo
//
//  Created by kuldeep on 27/01/21.
//  Copyright © 2021 markelytics. All rights reserved.
//

import UIKit
import SurveySdk
class SurveyListViewController: UIViewController {

    @IBOutlet weak var tabelView: UITableView!
    var surveys:[Survey] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabelView.delegate = self
        self.tabelView.dataSource = self
        self.tabelView.reloadData()

        let manager = SurveyManager.sharedInstance()
        manager.getSurveyList { (surveys, error) in
            if(error == nil){
                self.surveys = surveys
                print("got surves???")
                DispatchQueue.main.asyncAfter(deadline: .now(), execute: {
                    self.tabelView.reloadData()
                })
            } else {
                self.showToast(message: "got Error with \(error.debugDescription) ", font: UIFont.systemFont(ofSize: 17))
            }
        }

        // Do any additional setup after loading the view.
    }
    
    @IBAction func dismiss(_ sender: Any) {
        self.dismiss(animated: true) {
            print("closed")
        }
    }
    
    
    
}


extension SurveyListViewController: UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return surveys.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier:"SurveyTableCell" , for: indexPath) as? SurveyTableCell{
            cell.label.text = "ID:\(surveys[indexPath.row].surveyID) Category :\( surveys[indexPath.row].payload?.category)"
            return cell
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyBoard = UIStoryboard.init(name: "Main", bundle: nil)
        let surveyDetails = storyBoard.instantiateViewController(withIdentifier: "SurveyDetailsViewController") as! SurveyDetailsViewController
        surveyDetails.surveyID = surveys[indexPath.row].surveyID
        self.present(surveyDetails, animated: true) {
            print("Presented")
        }
    }
    
}

class SurveyTableCell:UITableViewCell{
    
    @IBOutlet weak var label: UILabel!
    
}

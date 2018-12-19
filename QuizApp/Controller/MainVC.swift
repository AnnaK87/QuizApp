//
//  ViewController.swift
//  QuizApp
//
//  Created by Anna Kaukh on 12/18/18.
//  Copyright © 2018 Anna Kaukh. All rights reserved.
//

import UIKit
import ProgressHUD

class MainVC: UIViewController {
    
    fileprivate var index: Int = 0
    fileprivate var score: Int = 0
    
    @IBOutlet weak var questionLbl: UILabel!
    @IBOutlet weak var questionNumberLbl: UILabel!
    @IBOutlet weak var scoreLbl: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startOver()
    }
    
    @IBAction func answerBtnPresed(_ sender: UIButton!) {
        let answer: Bool?
        answer = sender.tag == 0 ? true : false
        if answer == DataService.instance.getQuestion()[index].answer {
            score += 1
            ProgressHUD.showSuccess("Correct")
        } else {
            ProgressHUD.showError("Wrong")
        }
        guard index != (DataService.instance.getQuestion().count - 1) else { return startOver()}
        index += 1
        updateQuestion()
        updateScoreLbl()
        updateQuestionNumberLbl()
        updateProgressBar()
    }
    
    func updateQuestion() {
        questionLbl.text = DataService.instance.getQuestion()[index].question
    }
    
    func updateScoreLbl() {
        scoreLbl.text = "Score: \(score)"
    }
    
    func updateQuestionNumberLbl() {
        questionNumberLbl.text = "\(index+1)/\(DataService.instance.getQuestion().count)"
    }
    
    func updateProgressBar() {
        let progress = Float(index + 1) / Float(DataService.instance.getQuestion().count)
       
        progressBar.setProgress(progress, animated: true)
    }
    
    func startOver() {
        index = 0
        score = 0
        updateQuestion()
        updateScoreLbl()
        updateQuestionNumberLbl()
        updateProgressBar()
    }
}

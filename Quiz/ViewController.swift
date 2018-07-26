//
//  ViewController.swift
//  Quiz
//
//  Created by Bharath Giriyapura Marulasiddappa on 7/25/18.
//  Copyright © 2018 Bharath G M. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var answerLabel: UILabel!
    
    let questions: [String] = [
        "What is 7 + 7",
        "What is the capital of California?",
        "What is Cognac made from?"
    ]
    
    let answers: [String] = [
        "14",
        "Sacromento",
        "Grapes"
    ]
    
    var currentIndex: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = questions[currentIndex]
    }
    
    @IBAction func showNextQuestion(_ sender: UIButton) {
        currentIndex += 1;
        if currentIndex == questions.count {
            currentIndex = 0
        }
        questionLabel.text = questions[currentIndex]
        answerLabel.text = "???"
    }
    
    @IBAction func showAnswer(_ sender: UIButton) {
        answerLabel.text = answers[currentIndex]
    }
}


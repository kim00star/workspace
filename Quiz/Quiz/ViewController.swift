//
//  ViewController.swift
//  Quiz
//
//  Created by kimjiwon on 2022/06/17.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var answerLabel: UILabel!
    
    @IBAction func showNextQuestion(sender: AnyObject) {
        ++currentQuestionIndex
        if currentQuestionIndex == questions.count {
            currentQuestionIndex = 0
        }
        
        let question: String = questions[currentQuestionIndex]
        questionLabel.text = question
        answerLabel.text = "???"
    }
    
    @IBAction func showAnswer(sender: AnyObject) {
        let answer: String = answer[currentQuestionIndex]
        answerLabel.text = answer
    }


class ViewController: UIViewController {
    
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var answerLabel: UILabel!
    
    let questions: [String] = ["From what is cognac made?", "What is 7+7", "What is the capital of Vermon?"]
    let answer: [String] = ["Grapes", "14", "Montpelier"]
    var currentQuestionIndex: Int = 0
    
}

    class ViewController: UIViewController {
        
        override func viewDidLoad() {
            super.viewDidLoad()
            questionLabel.text = questions[currentQuestionIndex]
        }
    }

}

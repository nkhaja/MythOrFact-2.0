//
//  GameViewController.swift
//  MythOrFact
//
//  Created by Nabil K on 2016-07-06.
//  Copyright © 2016 Nabil. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {

    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var questionTextLabel: UILabel!
    @IBOutlet weak var heartImage: UIImageView!
    @IBOutlet weak var livesLabel: UILabel!
    @IBOutlet weak var timerLabel: UILabel!

    var gameBoard: GameBoard!
    var selectedCategory: String!
    var currentQuestion: Question!
    var questionsAnsweredCorrectly: [Question]! = []
    var questionsAnsweredIncorrectly: [Question]! = []
    var timer: Timer?

    
    override func viewDidLoad() {
        super.viewDidLoad()
        let questionBank = QuestionBank(category: selectedCategory)
        gameBoard = GameBoard(questions: questionBank.allQuestions)
        scoreLabel.text = String(gameBoard.score)
        livesLabel.text = String(gameBoard.lives)
        currentQuestion = gameBoard.pickQuestion()
        questionTextLabel.text = currentQuestion.text
        if(timer == nil) {
            timer = Timer.scheduledTimer(timeInterval: 1.0, target: self,
                    selector: #selector(onUpdateTimer), userInfo: nil, repeats: true)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "end" {
            if let endGameViewController = segue.destination as? EndGameViewController {
                endGameViewController.questionsAnsweredIncorrectly = questionsAnsweredIncorrectly
                endGameViewController.questionsAnsweredCorrectly = questionsAnsweredCorrectly
                endGameViewController.finalScore = scoreLabel.text
               endGameViewController.result = gameBoard.prepareResult(selectedCategory)
            }
        }
    }
    
    func onUpdateTimer() -> Void {
        if (gameBoard.time > 0) {
            gameBoard.time -= 1
            updateTimerLabel()
        }
        else if (gameBoard.isGameOver()) {
            performSegue(withIdentifier: "end", sender: self)
            timer!.invalidate()
        }
    }
    

    func updateTimerLabel() {
        if (timerLabel != nil) {
            let min: Int = (gameBoard.time / 60) % 60
            let sec: Int = gameBoard.time % 60
        
            let min_p: String = String(format: "%02d", min)
            let sec_p: String = String(format: "%02d", sec)
        
            timerLabel!.text = "\(min_p):\(sec_p)"
        }
    }

    func nextQuestion(_ gameBoard: GameBoard) -> () {
        if (gameBoard.isGameOver()) {
            performSegue(withIdentifier: "end", sender: self) // not sure about self here.
            timer!.invalidate()
            //print("Setup GameOver Screen Here")
        }
        else {
            currentQuestion = gameBoard.pickQuestion()
            questionTextLabel.text = currentQuestion.text
        }
    }
     
    
    @IBAction func mythButtonTapped(_ sender: UIButton) {
        if (currentQuestion.fact == false) {
            gameBoard.manageScore()
            scoreLabel.text = String(gameBoard.score)
            questionsAnsweredCorrectly.append(currentQuestion)
            
        }
        else {
            gameBoard.manageLives()
            livesLabel.text = String(gameBoard.lives)
            questionsAnsweredIncorrectly.append(currentQuestion)
        }
        nextQuestion(gameBoard)
    }

    @IBAction func factButtonTapped(_ sender: UIButton) {
        if (currentQuestion.fact == true) {
            gameBoard.manageScore()
            scoreLabel.text = String(gameBoard.score)
            questionsAnsweredCorrectly.append(currentQuestion)

        }
        else {
            gameBoard.manageLives()
            livesLabel.text = String(gameBoard.lives)
            questionsAnsweredIncorrectly.append(currentQuestion)

        }
        nextQuestion(gameBoard)
    }
    
    
    
}

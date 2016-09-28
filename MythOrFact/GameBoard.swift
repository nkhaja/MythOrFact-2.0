//
//  GameBoard.swift
//  MythOrFact
//
//  Created by Nabil K on 2016-07-06.
//  Copyright © 2016 Nabil. All rights reserved.
//

import UIKit

class GameBoard: NSObject {
    var score: Int = 0
    var lives: Int = 3
    var questions: [Question]
    var questionNumber: Int = 1
    var time:Int = 60
    var gameOver: Bool = false
    var result: [String:String] = [:]
        
    
    init(questions:[Question]){
        self.questions = questions
    }
        
    func manageScore() {
        score += 10
    }
        
    func manageLives() {
        lives -= 1
    }
    
    func manageQuestion() {
        questionNumber += 1
    }
        
    func isGameOver() -> Bool {
        if (lives <= 0 || questions.count == 0 || time == 0){
            gameOver = true
        }
        return gameOver
    }
    
    func pickQuestion() -> Question{
        if (questions.isEmpty){
            gameOver = true
            
            return Question(text: "Finished All Questions!", fact: true, category: "none", answer: "", title: "Finished")
    }
                
        else{
            let randomIndex = Int(arc4random_uniform(UInt32(questions.count)))
            let currentQuestion = questions[randomIndex]
            questions.remove(at: randomIndex)
            
            return currentQuestion
            }
        }
        
    func prepareResult(_ category: String) -> [String: String]{
        
            //result["user"] = user
            result["category"] = category
            result["score"] = String(score)
        return result
        
        }
    }



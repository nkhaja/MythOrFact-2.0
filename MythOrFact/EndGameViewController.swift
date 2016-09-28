//
//  EndGameViewController.swift
//  MythOrFact
//
//  Created by Nabil K on 2016-07-06.
//  Copyright © 2016 Nabil. All rights reserved.
//

import UIKit
import Firebase

class EndGameViewController: UIViewController {
    @IBOutlet weak var finalScoreLabel: UILabel!

    
    @IBOutlet weak var tableView: UITableView!
    
    var finalGameBoard: GameBoard!
    var questionsAnsweredCorrectly: [Question] = []
    var questionsAnsweredIncorrectly: [Question] = []
    var allFeedback:[[Question]] = []
    var section = ["correct", "incorrect"]
    
    
    var finalScore:String!
    var result: [String:String]!
    var feedback:Question!
    @IBOutlet weak var scoreLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        finalScoreLabel.text = finalScore
        self.navigationItem.setHidesBackButton(true, animated: false)
        
        
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        return self.section[section]
    }
    
    func numberOfSectionsInTableView(_ tableView: UITableView) -> Int {
        return section.count
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        allFeedback.append(questionsAnsweredCorrectly)
        allFeedback.append(questionsAnsweredIncorrectly)
        return self.allFeedback[section].count
    }
    
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAtIndexPath indexPath: IndexPath) -> UITableViewCell{
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "resultCell") as! EndGameTableViewCell
        feedback = allFeedback[(indexPath as NSIndexPath).section][(indexPath as NSIndexPath).row]
        cell.tag = Int(String((indexPath as NSIndexPath).section) + String((indexPath as NSIndexPath).row))!
        cell.textLabel!.text = feedback.title
        return cell

    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showAnswer" {

            
            if let showAnswerViewController = segue.destination as? ShowAnswerViewController {
                
                let selectedCell = tableView.indexPathForSelectedRow
                
                showAnswerViewController.displayAnswer = allFeedback[((selectedCell as NSIndexPath?)?.section)!][(selectedCell! as NSIndexPath).row].answer
                showAnswerViewController.displayQuestion = allFeedback[((selectedCell as NSIndexPath?)?.section)!][(selectedCell! as NSIndexPath).row].text

                
                if(allFeedback[((selectedCell as NSIndexPath?)?.section)!][(selectedCell! as NSIndexPath).row].fact){
                    showAnswerViewController.displayMythOrFact = "FACT!"
                }
                
                else{
                    showAnswerViewController.displayMythOrFact = "MYTH!"
                }
            }
        }
        
        if segue.identifier == "showLeaderBoard"{
            if let leaderBoardViewController = segue.destination as? LeaderBoardViewController
            
            {
                //leaderBoardViewController.result = finalGameBoard.prepareResult(<#T##user: String##String#>, category: <#T##String#>)
                
                
            }
        }
        
    }




}

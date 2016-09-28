//
//  ShowAnswerTableViewController.swift
//  MythOrFact
//
//  Created by Nabil K on 2016-07-07.
//  Copyright © 2016 Nabil. All rights reserved.
//

import UIKit

class ShowAnswerViewController: UIViewController {
    
    var displayMythOrFact: String! = ""
    var displayAnswer: String! = ""
    var displayQuestion: String! = ""

    @IBOutlet weak var mythOrFactLabel: UILabel!
    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mythOrFactLabel.text = displayMythOrFact
        answerLabel.text = displayAnswer
        questionLabel.text = displayQuestion
    

        // Do any additional setup after loading the view.
    }


    

}

//
//  ViewController.swift
//  MythOrFact
//
//  Created by Nabil K on 2016-07-05.
//  Copyright © 2016 Nabil. All rights reserved.
//

import UIKit

class CategoryViewController: UIViewController {
    
    var selectedCategory: String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "cb" {
            if let gameViewController = segue.destination as? GameViewController {
                gameViewController.selectedCategory = selectedCategory
            }
        }
    }
    
    
    @IBAction func firstCategoryButton(_ sender: UIButton) {
        selectedCategory = "c1body"
        performSegue(withIdentifier: "cb", sender: sender)
        
    }
    
    
    @IBAction func secondCategoryButton(_ sender: UIButton) {
        selectedCategory = "c2food"
        performSegue(withIdentifier: "cb", sender: sender)
    }
    
    
    @IBAction func thirdCategoryButton(_ sender: UIButton) {
        selectedCategory = "c3science"
        performSegue(withIdentifier: "cb", sender: sender)
    }

    @IBAction func fourthCategoryButton(_ sender: UIButton) {
        selectedCategory = "c4world"
        performSegue(withIdentifier: "cb", sender: sender)
    }
    
    
    @IBAction func randomButton(_ sender: UIButton) {
        selectedCategory = "random"
        performSegue(withIdentifier: "cb", sender: sender)
    }
    
    @IBAction func rewindToMainMenu(_ segue:UIStoryboardSegue) {
    }
    
    
}

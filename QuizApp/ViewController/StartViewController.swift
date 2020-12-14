//
//  StartViewController.swift
//  QuizApp
//
//  Created by 永井涼 on 2020/11/30.
//

import UIKit

class StartViewController: UIViewController {
    @IBOutlet weak var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startButton.layer.cornerRadius = 10

       
    }
    
    @IBAction func tapStartButton(_ sender: Any) {
        performSegue(withIdentifier: "toNext", sender: nil)
    }
    
   

}

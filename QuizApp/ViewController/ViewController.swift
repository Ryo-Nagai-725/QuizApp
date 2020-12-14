//
//  ViewController.swift
//  QuizApp
//
//  Created by 永井涼 on 2020/11/30.
//

import UIKit

 
class ViewController: UIViewController {
    var count = 0
    @IBOutlet weak var battuImage: UIImageView!
    @IBOutlet weak var maruImage: UIImageView!
    @IBOutlet weak var Answer1: UIButton!
    @IBOutlet weak var Answer2: UIButton!
    @IBOutlet weak var Answer3: UIButton!
    @IBOutlet weak var Answer4: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        count = 0
        self.navigationItem.hidesBackButton = true
        cornerRadius()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let Question1VC = segue.destination as! Question1ViewController
        Question1VC.count2 = count
    }

    @IBAction func tapAnswer1(_ sender: Any) {
        count += 25
        correctAnswer()
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            self.performSegue(withIdentifier: "toNext", sender: nil)
            self.maruImage.isHidden = true
        }
        
    }
    @IBAction func tapAnswer2(_ sender: Any) {
        incorrectAnswer()
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            self.performSegue(withIdentifier: "toNext", sender: nil)
            self.battuImage.isHidden = true
        }
        
    }
    @IBAction func tapAnswer3(_ sender: Any) {
        incorrectAnswer()
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            self.performSegue(withIdentifier: "toNext", sender: nil)
            self.battuImage.isHidden = true
        }
    }
    
    @IBAction func tapAnswer4(_ sender: Any) {
        incorrectAnswer()
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            self.performSegue(withIdentifier: "toNext", sender: nil)
            self.battuImage.isHidden = true
        }
    }
    
    func cornerRadius() {
        Answer1.layer.cornerRadius = 10
        Answer2.layer.cornerRadius = 10
        Answer3.layer.cornerRadius = 10
        Answer4.layer.cornerRadius = 10
    }
    
    func correctAnswer() {
        maruImage.isHidden = false
        
    }
    
    func incorrectAnswer() {
        battuImage.isHidden = false
    }
    
}


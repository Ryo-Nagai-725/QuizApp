//
//  Question1ViewController.swift
//  QuizApp
//
//  Created by 永井涼 on 2020/11/30.
//

import UIKit

class Question1ViewController: UIViewController {
    @IBOutlet weak var maruImage: UIImageView!
    @IBOutlet weak var battuImage: UIImageView!
    @IBOutlet weak var Answer1: UIButton!
    @IBOutlet weak var Answer2: UIButton!
    @IBOutlet weak var Answer3: UIButton!
    @IBOutlet weak var Answer4: UIButton!
    
    var count2 = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.hidesBackButton = true
        cornerRadius()

        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let Question2VC = segue.destination as! Question2ViewController
        Question2VC.count3 = count2
    }
    

    @IBAction func tapAnswer1(_ sender: Any) {
        incorrectAnswer()
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            self.performSegue(withIdentifier: "toNext", sender: nil)
            self.battuImage.isHidden = true
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
        count2 += 25
        correctAnswer()
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            self.performSegue(withIdentifier: "toNext", sender: nil)
            self.maruImage.isHidden = true
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

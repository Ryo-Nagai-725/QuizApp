//
//  ResultViewController.swift
//  QuizApp
//
//  Created by 永井涼 on 2020/11/30.
//

import UIKit

class ResultViewController: UIViewController {

   
    @IBOutlet weak var resultTextLabel: UILabel!
    @IBOutlet weak var commentTextLabel: UILabel!
    @IBOutlet weak var backButton: UIButton!
    
    var count5 = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        backButton.layer.cornerRadius = 10
        self.navigationItem.hidesBackButton = true
        resultTextLabel.text = "\(count5)/100"
        if count5 == 25 {
            commentTextLabel.text = "しょぼすぎですね笑"
        }else if count5 == 50 {
            commentTextLabel.text = "まあまあですね！"
        }else if count5 == 75 {
            commentTextLabel.text = "おしい！！もう少し"
        }else if count5 == 100 {
            commentTextLabel.text = "完璧です！素晴らしい"
        }

        
    }
    
    @IBAction func tapBackButton(_ sender: Any) {
        count5 = 0
        self.navigationController?.popToRootViewController(animated: true)
            }
    
    

}

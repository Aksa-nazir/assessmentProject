 //
//  2ndViewController.swift
//  AssessmentProject
//
//  Created by aksa nazir on 07/06/21.
//

import UIKit
 import BLTNBoard

class secondViewController: UIViewController {
    
    
    //bottom card................//
    private lazy var boardManager: BLTNItemManager = {
        
        let item = BLTNPageItem(title: "lets play the game")
        item.image = UIImage(named: "p1")
        item.image = UIImage(named: "Candy Bust")
        item.descriptionText = "player 1"
        item.descriptionText = "candy bust is a newly launched game, somehow similar to candy crush with new functions"
        item.actionButtonTitle = "Next"
        item.actionHandler = { _ in

            self.transitionToHome()

        }

        return BLTNItemManager(rootItem: item)
    }()
    
    
    
    

    //outlets.........................//
    
    @IBOutlet weak var pic1: UIImageView!
    @IBOutlet weak var pic2: UIImageView!
    @IBOutlet weak var pic3: UIImageView!
    @IBOutlet weak var progressView: UIProgressView!
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var playButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pic1.layer.cornerRadius = 25
        
       
    }
    
    @IBAction func button(_ sender: Any) {
        animateProgress()
    }
    //for progress view....................//
func animateProgress() {
    
     self.playButton.alpha = 0
     self.progressView.setProgress(0.0, animated: false)    // if you want to reset to zero
     DispatchQueue.global().async {
          for i in 0...100 {
               let prog = Float(i) / 100
               usleep(20000)          // 20 ms pause
               DispatchQueue.main.async { () -> Void in
                self.progressView.setProgress(prog, animated: true)
                self.playButton.alpha = 1
                self.playButton.backgroundColor = UIColor.systemBlue
                
                
               }
            }
        }
    }
    
    
    @IBAction func playButton(_ sender: Any) {
        boardManager.showBulletin(above: self)
        

  }

   func transitionToHome() {
        
            let thirdViewController = self.storyboard?.instantiateViewController(identifier: Constants.Storyboard.thirdViewController) as? thirdViewController
            view.window?.rootViewController = thirdViewController
            view.window?.makeKeyAndVisible()
    }
  
}


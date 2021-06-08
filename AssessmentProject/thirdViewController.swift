//
//  thirdViewController.swift
//  AssessmentProject
//
//  Created by aksa nazir on 08/06/21.
//

import UIKit

class thirdViewController: UIViewController {
    
    
    @IBOutlet weak var playerName: UILabel!
    @IBOutlet weak var playerAge: UILabel!
    @IBOutlet weak var lbl1: UILabel!
    @IBOutlet weak var lbl2: UILabel!
    @IBOutlet weak var lbl3: UILabel!
    @IBOutlet weak var Next: UIButton!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Shape of labels
        lbl1.layer.masksToBounds = true
        lbl1.layer.cornerRadius = 20
        lbl2.layer.cornerRadius = 20
        lbl2.layer.masksToBounds = true
        lbl3.layer.cornerRadius = 20
        lbl3.layer.masksToBounds = true
        playerAge.layer.cornerRadius = 10
        playerAge.layer.masksToBounds = true
        playerName.layer.cornerRadius = 10
        playerName.layer.masksToBounds = true
        
       
    }
    

    
    @IBAction func nextTapped(_ sender: Any) {
        
    }
    
}

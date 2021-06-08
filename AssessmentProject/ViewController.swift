//
//  ViewController.swift
//  AssessmentProject
//
//  Created by aksa nazir on 07/06/21.
//

import UIKit

class ViewController: UIViewController {
    
    var names = ["Candy Bust", "Angry Fly"]
         
   
    @IBOutlet weak var tableView: UITableView!
    


    override func viewDidLoad() {
        super.viewDidLoad()
       
     
        // Do any additional setup after loading the view.
    }


}
extension ViewController: UITableViewDelegate, UITableViewDataSource {
     
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         return names.count
     }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
       561
    }

     
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? TableViewCell

         cell?.img.image = UIImage(named: names[indexPath.row])
        
        //shape of image and the label
        
        cell?.img.layer.cornerRadius = 25
        cell?.lbl.layer.cornerRadius = 20
        cell?.lbl.layer.borderWidth = 1
        cell?.lbl.layer.masksToBounds = true
        cell?.lbl.backgroundColor = UIColor.yellow

        
    
             // add border and color to cell
              cell?.backgroundColor = UIColor.blue
              cell?.layer.borderColor = UIColor.white.cgColor
              cell?.layer.borderWidth = 20
              cell?.layer.cornerRadius = 40
              cell?.clipsToBounds = true
         return cell!
     }
     
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "secondViewController") as? secondViewController
//        vc?.image = UIImage(named: names[indexPath.row])!
//        vc?.name = names[indexPath.row]
        self.navigationController?.pushViewController(vc!, animated: true)
    }
 } 


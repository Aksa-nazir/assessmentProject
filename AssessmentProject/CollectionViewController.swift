//
//  CollectionViewController.swift
//  AssessmentProject
//
//  Created by aksa nazir on 07/06/21.
//

import UIKit

private let reuseIdentifier = "Cell3"

class CollectionViewController: UICollectionViewController {
    var picNames = ["cand2_200x500", "cand1_200x500"]
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
     

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)
        // Do any additional setup after loading the view.
       
    }

    
   


    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
               
        return 0
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return picNames.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell3 = collectionView.dequeueReusableCell(withReuseIdentifier: "cell3", for: indexPath) as!
        CollectionViewCell
    
      
        
    
        return cell3
    }

    

}


   


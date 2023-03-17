//
//  ViewController.swift
//  Coustom Collection View
//
//  Created by HARSHID PATEL on 14/02/23.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    var photo = [UIImage(named: "1"),UIImage(named: "2"),UIImage(named: "3"),UIImage(named: "4"),UIImage(named: "5"),UIImage(named: "6"),UIImage(named: "7"),UIImage(named: "8"),UIImage(named: "9"),UIImage(named: "10")]
    var name = ["Card - 1","Card - 2","Card - 3","Card - 4","Card - 5","Card - 6","Card - 7","Card - 8","Card - 9","Card - 10"]
    
    @IBOutlet weak var cv: UICollectionView!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return photo.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        cell.img.image = photo[indexPath.row]
        cell.lb.text = name[indexPath.row]
        return cell
    }
}


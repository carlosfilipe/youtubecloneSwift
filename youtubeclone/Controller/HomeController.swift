//
//  ViewController.swift
//  youtubeclone
//
//  Created by retina on 08/06/21.
//

import UIKit

class HomeController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Home"
        
        navigationController?.navigationBar.isTranslucent = false
//        navigationController?.navigationBar.barStyle = .black
        
        let titleLabel = UILabel(frame: CGRect(x: 0, y: 0, width: view.frame.width - 32, height: view.frame.height))
//        titleLabel.backgroundColor = .green
        titleLabel.text = "Home"
        titleLabel.textColor = .white
        titleLabel.font = UIFont.systemFont(ofSize: 20)
        navigationItem.titleView = titleLabel
        
        collectionView.backgroundColor = .white

        
        collectionView.register(VideoCell.self, forCellWithReuseIdentifier: "cellId")
        // Do any additional setup after loading the view.
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return 5
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cel = collectionView.dequeueReusableCell(withReuseIdentifier: "cellId", for: indexPath)
        return cel
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let heigth = (collectionView.frame.width - 16 - 16) * 9 / 16
        
        return CGSize(width: view.frame.width, height: heigth + 16 + 68)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }

}




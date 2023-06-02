//
//  tutorialViewController.swift
//  IOSnangcao
//
//  Created by Cường Lê Đức on 31/05/2023.
//

import UIKit

class tutorialViewController: UIViewController {

    @IBOutlet weak private var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        setupCollectionView()

    }
    private func setupCollectionView() {
        collectionView.dataSource = self
        collectionView.delegate = self
        if let flowLayout = collectionView.collectionViewLayout as?
            UICollectionViewFlowLayout{
            flowLayout.minimumLineSpacing = 0
            flowLayout.minimumInteritemSpacing = 0
            flowLayout.scrollDirection = .vertical
            flowLayout.estimatedItemSize = .zero
            flowLayout.itemSize = CGSize(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            
        }
        let sellID = "itemSectionCollectionViewCell"
        collectionView.register(UINib(nibName: sellID, bundle: nil), forCellWithReuseIdentifier: sellID )
        
    }
}
extension tutorialViewController:UICollectionViewDelegate{
    
}
extension tutorialViewController: UICollectionViewDataSource{
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 3
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch section {
        case 0:
            return 1
        case 1:
            return 0
        case 2:
            return 0
        default:
            return 0
            
        }
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "itemSectionCollectionViewCell", for: indexPath) as!itemSectionCollectionViewCell
        return cell
    }
}


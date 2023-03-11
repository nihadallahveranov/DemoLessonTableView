//
//  HomeCategoryTableViewCell.swift
//  DemoLessonTableView
//
//  Created by Nihad Allahveranov on 11.03.23.
//

import UIKit

class HomeCategoryTableViewCell: UITableViewCell {

    @IBOutlet weak var collectionView: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        collectionView.register(UINib(nibName: "CategoryItemCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "CategoryItemCollectionViewCell")
        
        configureLayout()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    private func configureLayout() {
        let layout = UICollectionViewFlowLayout()
        let width = (collectionView.frame.width - 60) / 2
        layout.itemSize = CGSize(width: width, height: 192)
        layout.scrollDirection = .vertical
        layout.sectionInset = UIEdgeInsets(top: 8, left: 20, bottom: 8, right: 20)
        layout.minimumInteritemSpacing = 8
        layout.minimumLineSpacing = 8
        collectionView.collectionViewLayout = layout
    }
    
}

extension HomeCategoryTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 6
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CategoryItemCollectionViewCell", for: indexPath) as! CategoryItemCollectionViewCell
        
        return cell
    }
    
    
}

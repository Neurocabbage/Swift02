//
//  PhotosCollectionViewController.swift
//  HomeWorkSwift01
//
//  Created by Fedot on 8/17/23.
//  Copyright © 2023 Fedot. All rights reserved.
//

import UIKit

class PhotosCollectionViewController: UICollectionViewController {
    private let myCellIdentifier: String = "PhotoCell"

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Photos"
        collectionView.backgroundColor = .systemBackground
        collectionView.register(PhotoCell.self, forCellWithReuseIdentifier: myCellIdentifier)
    }

    override func numberOfSections(in _: UICollectionView) -> Int {
        1
    }

    override func collectionView(_: UICollectionView, numberOfItemsInSection _: Int) -> Int {
        6
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: myCellIdentifier, for: indexPath)
        return cell
    }
}

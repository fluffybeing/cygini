//
//  HomeViewController.swift
//  cygini
//
//  Created by Rahul Ranjan on 3/26/18.
//  Copyright © 2018 Rahul Ranjan. All rights reserved.
//

import UIKit

class HomeViewController: UICollectionViewController {
  enum Constant: String {
    case placeCellId = "place"
  }

  override func viewDidLoad() {
    super.viewDidLoad()

    setupView()
  }

  func setupView() {
    collectionView?.backgroundColor = UIColor.white
    collectionView?.alwaysBounceVertical = true

    collectionView?.register(PlaceCollectionViewCell.self, forCellWithReuseIdentifier: Constant.placeCellId.rawValue)
    navigationItem.title = "Home"
  }
}

extension HomeViewController {
  override func numberOfSections(in collectionView: UICollectionView) -> Int {
    return 1
  }

  override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return 10
  }

  override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let placeCell = collectionView.dequeueReusableCell(withReuseIdentifier: Constant.placeCellId.rawValue,
                                                       for: indexPath) as! PlaceCollectionViewCell
    return placeCell
  }
}

extension HomeViewController: UICollectionViewDelegateFlowLayout {
   func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
     return CGSize(width: view.frame.width, height: 50)
  }
}


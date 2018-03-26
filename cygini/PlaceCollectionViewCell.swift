//
//  PlaceCollectionViewCell.swift
//  cygini
//
//  Created by Rahul Ranjan on 3/26/18.
//  Copyright © 2018 Rahul Ranjan. All rights reserved.
//

import UIKit

class PlaceCollectionViewCell: UICollectionViewCell {

  let placeNameLabel: UILabel = {
    let label = UILabel().autolayout()
    label.text = "XYZ Place"
    label.font = UIFont.boldSystemFont(ofSize: 14)
    return label
  }()

  override init(frame: CGRect) {
    super.init(frame: frame)

    setupViews()
  }

  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

  func setupViews() {
    self.backgroundColor = UIColor.red
    addSubview(placeNameLabel)

    placeNameLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
    placeNameLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
  }
}

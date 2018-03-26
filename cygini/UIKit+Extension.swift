//
//  UIKit+Extension.swift
//  cygini
//
//  Created by Rahul Ranjan on 3/26/18.
//  Copyright © 2018 Rahul Ranjan. All rights reserved.
//

import UIKit

extension UIView {
  func autolayout() -> Self {
    self.translatesAutoresizingMaskIntoConstraints = false
    return self
  }
}

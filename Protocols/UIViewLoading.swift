//
//  UIViewLoading.swift
//  ReportManager
//
//  Created by Rameez khan  on 01/11/17.
//  Copyright © 2017 Rameez khan . All rights reserved.
//

import UIKit
  
protocol UIViewLoading {}
extension UIView : UIViewLoading {}
extension UIViewLoading where Self : UIView {
  static func loadFromNib(nibName: String) -> Self? {
    let nib = UINib(nibName: nibName, bundle: nil)
    return nib.instantiate(withOwner: self, options: nil).first as? Self
  }
}

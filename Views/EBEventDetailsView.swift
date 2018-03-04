//
//  EBEventDetailsView.swift
//  EventBuzz
//
//  Created by Rameez khan  on 04/03/18.
//  Copyright © 2018 Rameez khan . All rights reserved.
//

import UIKit

class EBEventDetailsView: EventBuzzBaseView {
  
  @IBOutlet weak var detailSegment: UISegmentedControl!
  
  @IBOutlet weak var detailView: UIView!
  @IBOutlet weak var messagesView: UIView!
  @IBOutlet var photosView: EBPhotosView!
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    commonInit()
  }
  
  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    commonInit()
  }
  
  override func awakeFromNib() {
    super.awakeFromNib()
    commonInit()
  }
  
  func commonInit() {
    let nib = Bundle.main.loadNibNamed("EBPhotosView", owner: self, options: nil)
    guard let view = nib else { return }
    let photosView = view[0] as! EBPhotosView
    self.addSubview(photosView)
  }
}

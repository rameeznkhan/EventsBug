//
//  EventDetailsViewController.swift
//  EventBuzz
//
//  Created by Rameez khan  on 04/03/18.
//  Copyright © 2018 Rameez khan . All rights reserved.
//

import UIKit

class EventDetailsViewController: EventBuzzBaseViewController {
  let photoDataSource = PhotosDataSource()
  private weak var eventDetailsView: EBEventDetailsView? {
    if isViewLoaded {
      return view as? EBEventDetailsView
    }
    return nil
  }
  
  override func loadView() {
    super.loadView()
    if let eventDetailsView = EBEventDetailsView.loadFromNib(nibName: "EBEventDetailsView") {
      view = eventDetailsView
    }
  }
  

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
      eventDetailsView?.detailSegment.addTarget(self, action: #selector(segmentChanged(segment:)), for: .valueChanged)
      configCollectionView()
      configSegment(segmentIndex: 0)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
  
  @objc func segmentChanged(segment: UISegmentedControl) {
      configSegment(segmentIndex: segment.selectedSegmentIndex)
  }
  
  func configSegment(segmentIndex: Int) {
    switch segmentIndex {
    case 0:
      eventDetailsView?.detailView.isHidden = false
      eventDetailsView?.messagesView.isHidden = true
      eventDetailsView?.photosView.isHidden = true
    case 1:
      eventDetailsView?.detailView.isHidden = true
      eventDetailsView?.messagesView.isHidden = false
      eventDetailsView?.photosView.isHidden = true
    case 2:
      eventDetailsView?.detailView.isHidden = true
      eventDetailsView?.messagesView.isHidden = true
      eventDetailsView?.photosView.isHidden = false
    default:
      print("segment out of bounds")
    }
  }
  
  func configCollectionView() {
    eventDetailsView?.photosView.photosCollectionView.register(UINib.init(nibName: "PhotoCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "PhotoCell")
    eventDetailsView?.photosView.photosCollectionView.dataSource = photoDataSource
    eventDetailsView?.photosView.photosCollectionView.delegate = photoDataSource
    
  }
}

//
//  PhotosDataSource.swift
//  EventBuzz
//
//  Created by Rameez khan  on 04/03/18.
//  Copyright © 2018 Rameez khan . All rights reserved.
//

import UIKit
class PhotosDataSource: NSObject, UICollectionViewDataSource, UICollectionViewDelegate {
  func numberOfSections(in collectionView: UICollectionView) -> Int {
    return 0
  }
  
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return 10
  }
  
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PhotoCell", for: indexPath) as? UICollectionViewCell else {return UICollectionViewCell()}
    return cell
    
  }
}

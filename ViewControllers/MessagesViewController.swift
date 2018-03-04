//
//  MessagesViewController.swift
//  EventBuzz
//
//  Created by Rameez khan  on 24/02/18.
//  Copyright © 2018 Rameez khan . All rights reserved.
//

import UIKit

class MessagesViewController: EventBuzzBaseViewController {

  private weak var messagesView: EBMessagesView? {
    if isViewLoaded {
      return view as? EBMessagesView
    }
    return nil
  }
  
  override func loadView() {
    super.loadView()
    if let messagesView = EBMessagesView.loadFromNib(nibName: "EBMessagesView") {
      view = messagesView
    }
  }
  
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
          self.title = "Messages"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

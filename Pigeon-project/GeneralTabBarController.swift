//
//  GeneralTabBarController.swift
//  Pigeon-project
//
//  Created by Roman Mizin on 8/2/17.
//  Copyright © 2017 Roman Mizin. All rights reserved.
//

import UIKit
import Firebase


enum tabs: Int {
  case contacts = 0
  case chats = 1
  case settings = 2
}

class GeneralTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
      
      //self.view.alpha = 0
      setOnlineStatus()
    }
   let splash = UIImageView(frame: UIScreen.main.bounds)
  
  
  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    
    var onceToken = 0
    if onceToken == 0 {
    
     
      splash.image = UIImage(named: "splash")
      view.addSubview(splash)
    }
    onceToken = 1
  }
  
  
}

extension GeneralTabBarController: ManageAppearance {
  func manageAppearance(_ chatsController: ChatsController, didFinishLoadingWith state: Bool) {
    if state {
      //self.view.alpha = 1
      splash.removeFromSuperview()
    }
  }
}

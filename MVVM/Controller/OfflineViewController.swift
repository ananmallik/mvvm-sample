//
//  OfflineViewController.swift
//  MVVM
//
//  Created by Anan K. Mallik on 19/03/20.
//  Copyright © 2020 iOS.. All rights reserved.
//

import UIKit

class OfflineViewController: BaseViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        NetworkManager.sharedInstance.reachability.whenReachable = { reachability in
            self.dismissOfflinePage()
        }
    }
    
}

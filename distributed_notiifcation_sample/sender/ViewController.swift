//
//  ViewController.swift
//  sender
//
//  Created by Hiraku Ohno on 2020/06/14.
//  Copyright © 2020 hira. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let dnc = DistributedNotificationCenter.default()
        dnc.postNotificationName(NSNotification.Name("StringUserInfo"), object: nil, userInfo: ["value": "hogehoge"], deliverImmediately: true)
        dnc.postNotificationName(NSNotification.Name("URLUserInfo"), object: nil, userInfo: ["value": URL(string: "https://www.google.com")!], deliverImmediately: true)

    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}


//
//  ViewController.swift
//  receiver
//
//  Created by Hiraku Ohno on 2020/06/14.
//  Copyright © 2020 hira. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    private var observers = [NSObjectProtocol]()
    override func viewDidLoad() {
        super.viewDidLoad()

        let dnc = DistributedNotificationCenter.default()
        let o1 = dnc.addObserver(forName: NSNotification.Name("StringUserInfo"), object: nil, queue: OperationQueue.main) { n in
            print("Can receive")
            print(n)
        }
        observers.append(o1)

        let o2 = dnc.addObserver(forName: NSNotification.Name("URLUserInfo"), object: nil, queue: OperationQueue.main) { n in
            print("Cannot receive")
            print(n)
        }
        observers.append(o2)
    }
}


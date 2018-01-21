//
//  ViewController.swift
//  TableViews
//
//  Created by Perry Davies on 20/01/2018.
//  Copyright © 2018 Perry Davies. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
     
    @IBOutlet var modelView: ModelView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        modelView.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


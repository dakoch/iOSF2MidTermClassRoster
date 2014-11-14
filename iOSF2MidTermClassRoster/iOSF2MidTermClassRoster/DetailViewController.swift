//
//     File Name:   DetailViewController.swift
//  Project Name:   iOSF2MidTermClassRoster
//
//  Created by Gru on 11/09/14.
//  Copyright (c) 2014 GruTech. All rights reserved.

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!

    var people = [Person]()
    var aPerson : Person = Person(firstName: "John", lastName: "Doe", isStudent: false)

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.title                  = self.aPerson.getFullNameLastFirst()
        self.nameLabel.text         = self.aPerson.getFullName()
        self.view.backgroundColor   = UIColor.blueColor()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
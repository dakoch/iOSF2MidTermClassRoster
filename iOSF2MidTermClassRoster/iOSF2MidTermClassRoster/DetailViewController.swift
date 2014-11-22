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


<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
}
=======
=======
>>>>>>> FETCH_HEAD
=======
>>>>>>> FETCH_HEAD
    // MARK: - Navigation
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        println("DetailViewController::prepareForSegue sender: \(self.sender.title)")
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
}
>>>>>>> FETCH_HEAD

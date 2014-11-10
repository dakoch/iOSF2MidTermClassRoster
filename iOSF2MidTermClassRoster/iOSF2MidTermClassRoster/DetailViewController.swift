//
//  DetailViewController.swift
//  iOSF2MidTermClassRoster
//
//  Created by Gru on 11/09/14.
//  Copyright (c) 2014 GruTech. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

//  @IBOutlet...   comes from the selected row in the ViewController
//    >>
    var selectedPerson = Person()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.title = self.selectedPerson.name
        self.nameLabel.text = self.selectedPerson.name
        self.view.backgroundColor = UIColor.redColor()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


    // MARK: - Navigation
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        println("DetailViewController::prepareForSegue sender: \(self.sender.title)")
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
}

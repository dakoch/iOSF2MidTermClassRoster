
/* -----------------------------------------------------------------------------
//  FileName: ViewController.swift           02.A
//   Project: iOSF2MidTermClassRoster
//
//  Created by Gru on 11/05/14.
//  Copyright (c) 2014 Gru/CodeFellows. All rights reserved.
//
//  02.A - Implement a custom UIViewController subclass w/ the following functionality
//  02.B - A property that's type is an array of Person objects
//  02.C - A method that created 5+ Person instatnces, 'creatPeople()' and adds
//         them to the array, 'names'
//
//  02.D - An outlet for a label that is placed on the view controller in the
//         'storyboard'
//  02.E - Two buttons placed on the 'storyboard' below the label, on that says
//         'LEFT' and one that has 'RIGHT'
//  02.F - Each button should be hooked up to an action called. One is called
//         'moveLeft' and the other, 'moveRight'
//  02.G - Design a way that when the buttons are pressed, a first of a person
//         object in the 'PERSON' array is displayed on the label. Pressing 
//         'RIGTH' button should cause the next person's name to appear in the
//         lable and 'LEFT' should show the previous name in the array.
// -----------------------------------------------------------------------------
// */

import Foundationn

class ViewController: UIViewController, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!          // 02.D

    var names       = [Person]()                        // 02.B
    var row : Int   = 0

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view, typically from a nib.
        createPeople()
        self.tableView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section : Int) -> Int {
        return self.names.count
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        println("function[tableView]cellForRowAtIndexPath --> row: \(indexPath.row) \n")

        let cell =
            tableView.dequeueReusableCellWithIdentifier("CELL_READ_ONLY", forIndexPath: indexPath) as UITableViewCell

        var personToDisplay = self.names[indexPath.row]
        cell.textLabel?.text = personToDisplay.getFullName()
        println( "Setting cell[\(cell.textLabel?.text)] -->  index[\(row)]")

        row++
        return cell
    }

    //  02.C
    func createPeople() {
        var person1 : Person = Person(firstName: "Donner",  lastName: "Reindeer", isStudent: false)
        var person2 : Person = Person(firstName: "Blitzen", lastName: "Reindeer", isStudent: false)
        var person3 : Person = Person(firstName: "Rocky", lastName: "Squirell", isStudent: false)
        var person4 : Person = Person(firstName: "Bullwinkle", lastName: "Moose", isStudent: true)
        var person5 : Person = Person(firstName: "Son", lastName: "Ofsam", isStudent: false)
        var person6 : Person = Person(firstName: "Tom", lastName: "Tuesday", isStudent: true)
        var person7 : Person = Person(firstName: "Santa", lastName: "Clause", isStudent: false)
        var person8 : Person = Person(firstName: "Misses", lastName: "Clause", isStudent: false)

        addAPerson( person1 )
        addAPerson( person2 )
        addAPerson( person3 )
        addAPerson( person4 )
        addAPerson( person5 )
        addAPerson( person6 )
        addAPerson( person7 )
        addAPerson( person8 )

        println("Created \(names.count) new 'names' in the 'PERSON' class")
    }

    func addAPerson( person : Person ) {
        names.append( person )
        println( person.getFullName() )
    }

    /* 02.E, 02.F, 02.G  Code has been commented out ....  for Day 3


    //  02.E/F Go Left Button
    @IBAction func moveLeft(sender: AnyObject) {

        if currentIndex - 1 == -1  {
            currentIndex    = persons.count - 1
        } else {
            currentIndex = currentIndex - 1
        }
        personName.text = persons[currentIndex].getFullName()
        println("Left Button, currentIndex: \(currentIndex)")
    }

    //  02.E/F Go Right Button
    @IBAction func moveRight(sender: AnyObject) {

        if currentIndex >= persons.count - 1 {
            currentIndex = 0
        } else {
            currentIndex = currentIndex + 1
        }
        personName.text = persons[currentIndex].getFullName()
        println("Right Button, currentIndex: \(currentIndex)")
    }
    */
}


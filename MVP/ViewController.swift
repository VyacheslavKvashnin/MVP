//
//  ViewController.swift
//  MVP
//
//  Created by Вячеслав Квашнин on 29.04.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var greetingLabel: UILabel!
    
    private var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        person = Person(name: "Tim", surname: "Cook")
    }
    @IBAction func pressedButton(_ sender: UIButton) {
        greetingLabel.text = "Hello \(person.name) \(person.surname)!"
    }
}


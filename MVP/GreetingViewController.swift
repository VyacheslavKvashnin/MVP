//
//  ViewController.swift
//  MVP
//
//  Created by Вячеслав Квашнин on 29.04.2022.
//

import UIKit

protocol GreetingViewProtocol: AnyObject {
    func setGreeting(_ greeting: String)
}

class GreetingViewController: UIViewController {

    @IBOutlet weak var greetingLabel: UILabel!
    
    private var presenter: PresenterProtocol!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let person = Person(name: "Tom", surname: "Jerry")
        presenter = Presenter(view: self, person: person)
    }
    @IBAction func pressedButton(_ sender: UIButton) {
        presenter.showGreeting()
    }
}

extension GreetingViewController: GreetingViewProtocol {
    func setGreeting(_ greeting: String) {
        greetingLabel.text = greeting
    }
}

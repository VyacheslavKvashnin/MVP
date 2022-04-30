//
//  Presenter.swift
//  MVP
//
//  Created by Вячеслав Квашнин on 29.04.2022.
//

import Foundation

protocol PresenterProtocol {
    init(view: GreetingViewProtocol, person: Person)
    func showGreeting()
}

class Presenter: PresenterProtocol {
    unowned let view: GreetingViewProtocol
    let person: Person
    required init(view: GreetingViewProtocol, person: Person) {
        self.view = view
        self.person = person
    }
    
    func showGreeting() {
        let greeting = "Hello \(person.name) \(person.surname)"
        view.setGreeting(greeting)
        
    }
}

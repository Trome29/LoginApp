//
//  Person.swift
//  LoginApp
//
//  Created by Roman on 04.10.2022.
//

struct Person {
    let name: String
    let surname: String
    let country: String
    let city: String
    
    static func getUserData() -> Person {
        Person(
            name: "Роман",
            surname: "Точин",
            country: "Россия",
            city: "Калининград"
        )
    }
    
    static func getUserBio() -> String {
      "Много текста ."
    }
}


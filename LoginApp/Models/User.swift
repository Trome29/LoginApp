//
//  User.swift
//  LoginApp
//
//  Created by Roman on 04.10.2022.
//

struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getUserData() -> User {
        User(login: "User", password: "Password", person: Person.getUserData())
    }
}

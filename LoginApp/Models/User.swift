//
//  User.swift
//  LoginApp
//
//  Created by Roman on 04.10.2022.
//

struct User {
    let login: String
    let password: String
    let person: UserData
    
    static func getUserLogin() -> User {
        User(login: "User", password: "Password", person: .getUserData())
    }
}

struct UserData {
    let name: String
    let surname: String
    let country: String
    let city: String
    let userBio: String
    
    static func getUserData() -> UserData {
        UserData(
            name: "Роман",
            surname: "Точин",
            country: "Россия",
            city: "Калининград",
            userBio: "Родился на севере, объехал пол страны, жил в 7 крупных городах. С детства занимался спортом и увлекался компьютерными играми. Но, окончив университет по специальности 'Информационные технологии', ушел работать в другую сферу. Развивался там до момента глобальных перемен в мире. В компании началась 'оптимизация расходов', поэтому после этого решил все таки попробовать 'войти в IT'. После двух недель размышлений выбрал IOS разработку, о чем совсем не жалею."
        )
    }
}

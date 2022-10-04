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
      "Родился на севере, объехал пол страны, жил в 7 крупных городах. С детства занимался спортом и увлекался компьютерными играми. Но, окончив университет по специальности 'Информационные технологии', ушел работать в другую сферу. Рос и двигался там, пока не случилось 24 февраля и не началась 'оптимизация расходов'. После этого решил все таки попробовать 'войти в IT' и после недели размышлений выбрал IOS разработку, о чем совсем не жалею."
    }
}


//
//  DataManager.swift
//  Course - 1st swift apps - HW-07
//
//  Created by Lev Litvak on 20.02.2020.
//  Copyright © 2020 Lev Litvak. All rights reserved.
//

final class DataManager {
    static let shared = DataManager()
    
    let firstnames = [
        "Alexey",
        "Alexandr",
        "Oleg",
        "Ilya",
        "Fedor",
        "Evgeniy",
        "Zurab",
        "Rustem",
        "Valeriy",
        "Prohor"]
    let lastnames = [
        "Smolov",
        "Putin",
        "Gugo",
        "Shopen-dlinnofamilniy",
        "Zuev",
        "Sorokin",
        "Marfin",
        "Dud'",
        "Komarov",
        "Zinin"
    ]
    let phones = [
    "8-111-11-11-111",
    "8-222-22-22-222",
    "8-333-33-33-333",
    "8-444-44-44-444",
    "8-555-55-55-555",
    "8-777-77-77-777",
    "8-888-88-88-888",
    "8-999-99-99-999",
    "8-123-45-67-890",
    "8-098-76-54-321",
    ]
    let emails = [
    "pamposhka15@mail.ru",
    "gus03@inbox.ru",
    "sobaka@gmail.com",
    "skakdollar@1c.ru",
    "polovina9@ufanet.ru",
    "barsuk1990_longstring@apple.com",
    "shalom@list.ru",
    "ogonek333@gmail.com",
    "pusk321@start.com",
    "lobsterfan@icloud.com"
    ]
    
    private init() {}
}

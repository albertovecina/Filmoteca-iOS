//
//  Movie.swift
//  filmoteca
//
//  Created by Alberto Vecina Sánchez on 07/05/2020.
//  Copyright © 2020 VSA. All rights reserved.
//

import Foundation

struct Movie {
    
    init() {
        self.title = "title"
        self.subtitle = "subtitle"
        self.date = "date"
        self.url = "url"
    }
    
    init(title: String, subtitle: String, date: String, url: String) {
        self.title = title
        self.subtitle = subtitle
        self.date = date
        self.url = url
    }
    
    let title: String
    let subtitle: String
    let date: String
    let url: String
}

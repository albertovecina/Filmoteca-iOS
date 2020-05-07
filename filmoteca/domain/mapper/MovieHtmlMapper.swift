//
//  MovieHtmlMapper.swift
//  filmoteca
//
//  Created by Alberto Vecina Sánchez on 07/05/2020.
//  Copyright © 2020 VSA. All rights reserved.
//

import Foundation
import SwiftSoup

class MovieHtmlMapper {
    
    private static let CLASS_EVENT = "\\\"contenttype-evento"
    private static let CLASS_DATE = "\\\"description\\\""

    
    static func transformMovie(_ html: String) -> [Movie] {
        let moviesList: [Movie] = []
        if(html.isEmpty) { // Check if It's nil?
            return moviesList
        }
        
        do {
            let document: Document = try SwiftSoup.parse(html)
            var events = try document.getElementsByClass(CLASS_EVENT)
            let dates = try document.getElementsByClass(CLASS_DATE)
            
            var movie: Movie
            //try print(document.outerHtml())
        
            for x in events.indices {
                var event = events[x]
                
                print("\(x) \(event)")
                movie = Movie()
            }
        } catch Exception.Error(let type, let message) {
            print(message)
        } catch {
            print("error")
        }
        
//        var movie: Movie
//
//        for (x in events.indices) {
//            val event = events[x]
//            movie = Movie()
//            val link = event.getElementsByClass("url").first()
//            val title = link.text()
//            if (title.indexOf("(") > 0) {
//                movie.title = title.substring(0, title.indexOf("(")).trim { it <= ' ' }
//                movie.subtitle = title.substring(title.indexOf("("))
//            } else {
//                movie.title = title.trim { it <= ' ' }
//                movie.subtitle = ""
//            }
//
//            movie.url = link.attr("href")
//            val date = "- " + dates[x].text()
//            movie.date = date
//
//            moviesList.add(movie)
//        }
        return moviesList
    }
    
}

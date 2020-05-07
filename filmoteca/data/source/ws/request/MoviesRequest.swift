//
//  MoviesRequest.swift
//  filmoteca
//
//  Created by Alberto Vecina Sánchez on 06/04/2020.
//  Copyright © 2020 VSA. All rights reserved.
//

import Foundation
import Alamofire

class MoviesRequest {
    
    static func request() {
        //AF.request(FILMOTECA_ENDPOINT + "/es/webs-municipales/filmoteca/agenda/folder_listing").responseString{response in
        AF.request("http://seldon-nas.dnset.com/filmoteca.html").responseString{response in
            print(MovieHtmlMapper.transformMovie(response.description))
            //print(response.description)
        }
    }
    
}

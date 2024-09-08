//
//  RestAPIAlamofire.swift
//  CursoUndemy2024
//
//  Created by Jesus Alberto Diaz Dominguez on 07/09/24.
//

import Foundation
import Alamofire

class RestAPIAlamofire {
    
    static let shared = RestAPIAlamofire()
    
    let urlPopular  = "https://api.themoviedb.org/3/movie/popular?api_key=c89f997b9f805d783c81fc1e854ed7d1"
    let statusOK = 200...299
    func getPopular(id: Int){
        AF.request(urlPopular, method: .get).validate(statusCode: statusOK).responseDecodable(of: ResultPopulares.self){ reponse in
            
        }
        
    }
}

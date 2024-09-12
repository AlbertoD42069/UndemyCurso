//
//  RestAPIAlamofire.swift
//  CursoUndemy2024
//
//  Created by Jesus Alberto Diaz Dominguez on 07/09/24.
//

import Foundation
import Alamofire

class Urls {
    static let urlPopular  = "https://api.themoviedb.org/3/movie/popular?api_key=c89f997b9f805d783c81fc1e854ed7d1"

}

class RestAPIAlamofire {
    
    static let shared = RestAPIAlamofire()
    
    //MARK: metodo get
    let statusOK = 200...299
    func getPopular(urlPopularPelicula: String, success: @escaping (_ pelicula: [Results]) ->(), failed: @escaping (_ error: Error?) ->() ){
        AF.request(urlPopularPelicula, method: .get).validate(statusCode: statusOK).responseDecodable(of: Populares.self){ reponse in
            if let pelicula = reponse.value?.results {
                //reponse.value?.results.count {
                success(pelicula)
                print(pelicula)
                
                var mapPelicula = pelicula.map { response in
                    DataPeliculaDetalles(adult: response.adult, id: response.id, original_language: response.original_language, original_title: response.original_title, overview: response.overview, popularity: response.popularity, release_date: response.release_date, title: response.title)
                }
                print("-----------------\(mapPelicula)-----------------")
            }else {
                failed(reponse.error)
            }
        }
    }
    //MARK: metodo post
    /*
    func postPopular(urlPopularPelicula: String, success: @escaping (_ pelicula: [Results]) ->(), failed: @escaping (_ error: Error?) ->() ){
        
        
        AF.request(NewPelicula as! URLConvertible, method: .post, parameters: pelicula, encoder: JSONParameterEncoder.default).validate(statusCode: statusOK).responseDecodable(of: Populares.self, decoder: DataDecoder()){ reponse in
            
            if let pelicula = reponse.value?.results {
                //reponse.value?.results.count {
                success(pelicula)
                print(pelicula)
                
                var mapPelicula = pelicula.map { response in
                    DataPeliculaDetalles(adult: response.adult, id: response.id, original_language: response.original_language, original_title: response.original_title, overview: response.overview, popularity: response.popularity, release_date: response.release_date, title: response.title)
                }
                print("-----------------\(mapPelicula)-----------------")
            }else {
                failed(reponse.error)
            }
        }
    }*/
}

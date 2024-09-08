//
//  PopularesData.swift
//  CursoUndemy2024
//
//  Created by Jesus Alberto Diaz Dominguez on 07/09/24.
//

import Foundation

struct Populares : Decodable{
    let page: Int?
    let results: ResultPopulares?
}
struct ResultPopulares : Decodable {
    let adult: Bool?
    let backdrop_path: String?
    let genre_ids: GenreIds?
    let id: Int?
    let original_language: String?
    let original_title: String?
    let overview: String?
    let popularity: Int?
    let poster_path: String?
    let release_date: String?
    let title: String?
    let video: Bool?
    let vote_average: Double?
    let vote_count: Int?
}
struct GenreIds : Decodable {
    
}

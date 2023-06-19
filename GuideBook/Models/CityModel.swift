//
//  City.swift
//  GuideBook
//
//  Created by macbook on 08.06.2023.
//

import Foundation


struct City: Identifiable, Decodable{
    
    let id = UUID()
    var imageName: String
    var name: String
    var summary: String
 
    
    var attractions: [Attraction]
}


struct Attraction: Identifiable, Decodable {
    
    let id =  UUID()
    var name: String
    var summary: String
    var longDescription: String
    var imageName: String
    var latLong: String

}

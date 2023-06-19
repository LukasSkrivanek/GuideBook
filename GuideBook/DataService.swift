//
//  DataService.swift
//  GuideBook
//
//  Created by macbook on 08.06.2023.
//

import Foundation


struct DataService {
    
    func getFileData() throws -> [City] {
        guard let url = Bundle.main.url(forResource: "Data", withExtension: "json") else {
            throw DataError.fileNotFound
        }
        
        let data = try Data(contentsOf: url)
        
        let decoder = JSONDecoder()
        
        do {
            let cities = try decoder.decode([City].self, from: data)
            return cities
        } catch {
            throw DataError.decodingError(error)
        }
    }
}

enum DataError: Error {
    case fileNotFound
    case decodingError(Error)

}

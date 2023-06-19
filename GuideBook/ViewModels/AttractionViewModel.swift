//
//  ViewModel.swift
//  GuideBook
//
//  Created by macbook on 16.06.2023.
//

import Foundation

class AttractionViewModel: ObservableObject {
    var attractions: [Attraction]

      init(attractions: [Attraction]) {
          self.attractions = attractions
      }

    
    func cleanAttractionName(name: String) -> String {
        return name.replacingOccurrences(of: " ", with: "+").folding(options: .diacriticInsensitive, locale: .current)
    }

    func cleanAttractionCoords(latLong: String) -> String {
        return latLong.replacingOccurrences(of: " ", with: "")
    }
}






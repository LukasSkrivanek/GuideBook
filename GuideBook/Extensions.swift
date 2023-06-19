//
//  Extensions.swift
//  GuideBook
//
//  Created by macbook on 19.06.2023.
//

import Foundation

extension String {
    func cleanAttractionName() -> String {
        return self.replacingOccurrences(of: " ", with: "+").folding(options: .diacriticInsensitive, locale: .current)
    }
    
    func cleanAttractionCoords() -> String {
        return self.replacingOccurrences(of: " ", with: "")
    }
}

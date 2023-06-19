//
//  DetailViewModel.swift
//  GuideBook
//
//  Created by macbook on 17.06.2023.
//

import Foundation

class DetailViewModel: ObservableObject {
    let attraction: Attraction
    let url: String = "http://maps.apple.com/?q="

    init(attraction: Attraction) {
        self.attraction = attraction
    }
    
    
}

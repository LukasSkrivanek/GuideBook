//
//  AttractionRowViewModel.swift
//  GuideBook
//
//  Created by macbook on 17.06.2023.
//

import Foundation



struct AttractionRowViewModel: Identifiable {
    let id = UUID()
    let name: String
    let summary: String
    let imageName: String

    init(attraction: Attraction) {
        name = attraction.name
        summary = attraction.summary
        imageName = attraction.imageName
    }
}

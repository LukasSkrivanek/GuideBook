//
//  CityViewModel.swift
//  GuideBook
//
//  Created by macbook on 17.06.2023.
//

import Foundation

struct CityCardViewModel {
    let name: String
    let summary: String
    let imageName: String
    let cornerRadius: CGFloat = 15
    let cardHeight: CGFloat = 400
    let opacity: CGFloat = 0.5

    init(city: City) {
        name = city.name
        summary = city.summary
        imageName = city.imageName
    }
}

//
//  CityViewModel.swift
//  GuideBook
//
//  Created by macbook on 19.06.2023.
//

import Foundation

class CityViewModel: ObservableObject {
    @Published var cities = [City]()
    var dataService = DataService()
    
}

//
//  ContentView.swift
//  GuideBook
//
//  Created by macbook on 08.06.2023.
//

import SwiftUI



struct CityView: View {
    @StateObject var viewModel = CityViewModel()
    

    var body: some View {
        NavigationStack {
            ScrollView(showsIndicators: false) {
                VStack {
                    ForEach(viewModel.cities) { city in
                 
                        NavigationLink(destination: AttractionView(viewModel: AttractionViewModel(attractions: city.attractions))) {
                            CityCard(viewModel: CityCardViewModel(city: city))
                                .padding(.bottom, 20)
                        }
                    }
                }
                .padding()
            }
        }
        .ignoresSafeArea()
        .onAppear  {
            
            do{
                viewModel.cities = try viewModel.dataService.getFileData()
            }catch{
              
                print("Error loading data:: \(error)")
            }

        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        CityView()
    }
}

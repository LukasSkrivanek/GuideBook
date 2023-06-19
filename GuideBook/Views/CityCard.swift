//
//  CityCard.swift
//  GuideBook
//
//  Created by macbook on 08.06.2023.
//

import SwiftUI


struct CityCard: View {
    var viewModel: CityCardViewModel

    var body: some View {
        

        ZStack {
            Rectangle()
                .background {
                    Image(viewModel.imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .cornerRadius(viewModel.cornerRadius)
                }
                .foregroundColor(.clear)
                .cornerRadius(viewModel.cornerRadius)

            Rectangle()
                .foregroundColor(.black)
                .opacity(viewModel.opacity)
                .cornerRadius(viewModel.cornerRadius)

            VStack(alignment: .leading) {
                Text(viewModel.name)
                    .font(.largeTitle)
                    .bold()

                Spacer()

                Text(viewModel.summary)
                    .multilineTextAlignment(.leading)
            }
            .padding()
            .foregroundColor(.white)
        }
        .frame(height: viewModel.cardHeight)
    }
}



struct CityCard_Previews: PreviewProvider {
    static var previews: some View {
        
        CityCard(viewModel: CityCardViewModel(city: City(imageName: "tokyo", name: "Tokyo", summary: "Tokyo serves as Japan's economic center and is the seat of both the Japanese government and the Emperor of Japan. Tokyo.", attractions: [])))
    }
}

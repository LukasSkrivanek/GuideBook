//
//  DetailView.swift
//  GuideBook
//
//  Created by macbook on 08.06.2023.
//

import SwiftUI

struct DetailView: View {
    var viewModel: DetailViewModel
   

    var body: some View {
        VStack(spacing: 20) {
            Image(viewModel.attraction.imageName)
                .resizable()
                .scaledToFit()
                .ignoresSafeArea()
                .frame(height: 300)

            ScrollView(showsIndicators: false) {
                VStack(alignment: .leading) {
                    Text(viewModel.attraction.name)
                        .font(.title)
                        .bold()
                        .padding(.horizontal)

                    Text(viewModel.attraction.longDescription)
                        .multilineTextAlignment(.leading)
                        .padding(.horizontal)

                    if let url = URL(string: "\(viewModel.url.cleanAttractionName())&sll=\(viewModel.attraction.latLong.cleanAttractionCoords())&t=s") {
                        if UIApplication.shared.canOpenURL(url) {
                            Button(action: {
                                UIApplication.shared.open(url)
                            }) {
                                ZStack {
                                    RoundedRectangle(cornerRadius: 15)
                                        .foregroundColor(.blue)
                                        .frame(height: 40)

                                    Text("Get Directions")
                                        .foregroundColor(.white)
                                }
                            }
                            .padding(.horizontal)
                        }
                    }
                }
            }
        }
        .navigationBarTitle(viewModel.attraction.name) 
    }

    

   
}



struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(viewModel: DetailViewModel(attraction: Attraction( name: "Buckingham Palace",
                                          summary: "Buckingham Palace is a London royal residence and the administrative headquarters of the monarch of the United Kingdom. Located in the City of Westminster, the palace is often at the centre of state occasions and royal hospitality.",
                                          longDescription: """
       Buckingham Palace is a London royal residence and the administrative headquarters of the monarch of the United Kingdom. Located in the City of Westminster, the palace is often at the centre of state occasions and royal hospitality. It has been a focal point for the British people at times of national rejoicing and mourning.

       Originally known as Buckingham House, the building at the core of today's palace was a large townhouse built for the Duke of Buckingham in 1703 on a site that had been in private ownership for at least 150 years. It was acquired by King George III in 1761 as a private residence for Queen Charlotte and became known as The Queen's House. During the 19th century it was enlarged by architects John Nash and Edward Blore, who constructed three wings around a central courtyard. Buckingham Palace became the London residence of the British monarch on the accession of Queen Victoria in 1837.
       """,
                                          imageName: "buckingham", latLong: "51.50148418749087, -0.1410746109020975")
                   ))
    }
}

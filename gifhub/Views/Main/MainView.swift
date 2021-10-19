//
//  MainView.swift
//  gifhub
//
//  Created by Amir Riyadh on 15/10/2021.
//

import SwiftUI

struct MainView: View {

    @State var gifs: [GifModel] = []

    var body: some View {
        NavigationView {
            StaggeredGrid(columns: 2, list: gifs, showIndicator: true, spacing: 8, content: { gif in
                GifCardView(image: gif.imageURL)
                    .onAppear {
                        print(gif.imageURL)
                    }
            })
            .padding(.horizontal)
            .navigationTitle("gifHub")
        }
        .onAppear {
            for index in 1..<8 {
                gifs.append(GifModel(imageURL: "gif\(index)"))
            }
        }

    }
    

}


struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            MainView().colorScheme(.dark)
        }
    }
}


struct GifCardView: View {
    var image: String

    var body: some View {
        Image(image)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .cornerRadius(10)
    }
}

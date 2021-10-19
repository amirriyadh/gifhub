//
//  TabView.swift
//  gifhub
//
//  Created by Amir Riyadh on 16/10/2021.
//

import SwiftUI

struct AppTabView: View {
    var body: some View {

        TabView {
            MainView()
                .tabItem { Label("Discover", systemImage: "rectangle.3.offgrid.fill") }
                .accentColor(.accentColor)

            Text("Saved")
                .tabItem { Label("Saved", systemImage: "bookmark.fill") }
                .accentColor(.accentColor)
        }
    }
}


struct AppTabView_Preview: PreviewProvider {
    static var previews: some View {
        AppTabView().colorScheme(.dark)
    }
}

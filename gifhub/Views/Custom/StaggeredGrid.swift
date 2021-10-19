//
//  StaggeredGrid.swift
//  gifhub
//
//  Created by Amir Riyadh on 18/10/2021.
//

import SwiftUI


struct StaggeredGrid<Content: View, T: Identifiable>: View where T: Hashable {

    var content: (T) -> Content

    var list: [T]

    var columns: Int
    var showIndicator: Bool
    var spacing: CGFloat

    internal init(columns: Int, list: [T], showIndicator: Bool, spacing: CGFloat, content: @escaping (T) -> Content) {
        self.content = content
        self.list = list
        self.showIndicator = showIndicator
        self.spacing = spacing
        self.columns = columns
    }

    func setupList() -> [[T]] {
        var gridArray: [[T]] = Array(repeating: [], count: columns)

        var currentIndex = 0
        for object in list {
            gridArray[currentIndex].append(object)

            if currentIndex == (columns-1) {
                currentIndex = 0
            } else {
                currentIndex += 1
            }
        }

        return gridArray
    }

    var body: some View {

        ScrollView(.vertical, showsIndicators: showIndicator, content: {
            HStack(alignment: .top) {

                ForEach(setupList(), id: \.self) { item in

                    LazyVStack(spacing: spacing) {
                        ForEach(item) { object in
                            content(object)
                        }
                    }

                }
            }

        })
    }
}

struct StaggeredGrid_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            MainView().colorScheme(.dark)
        }
    }
}

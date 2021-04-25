//
//  tabView.swift
//  SeaPlastic
//
//  Created by Khushi Sinha on 4/25/21.
//

import SwiftUI

struct tabView: View {
    var body: some View {
        TabView{
           homePage()
            .tabItem {
                Image(systemName: "house")
                Text("Home")
                }
            organize()
                .tabItem {
                    Image(systemName: "person.3.fill")
                    Text("Organize")
                }

            MapView()
                .tabItem{
                    Image(systemName: "map.fill")
                    Text("Map")
                }
            info()
                .tabItem {
                    Image(systemName: "books.vertical.fill")
                    Text("More Info")
                }

}
    }
}

struct tabView_Previews: PreviewProvider {
    static var previews: some View {
        tabView()
    }
}

//
//  HomeView.swift
//  pokedex
//
//  Created by Esdras Santos Gois on 14/11/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            HomeToolbar()
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            NavigationLink(destination: DetailsView()) {
                Text("Go to details")
            }
            Spacer()
        }
    }
}

#Preview {
    HomeView()
}

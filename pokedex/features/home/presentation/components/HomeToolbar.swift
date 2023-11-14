//
//  HomeToolbar.swift
//  pokedex
//
//  Created by Esdras Santos Gois on 14/11/23.
//

import SwiftUI

struct HomeToolbar: View {
    @State private var searchValue: String = ""
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Text("Pokemons")
                    .font(.title2)
                Spacer()
                Button(action: {}) {
                    Image(systemName: "info.circle")
                        .font(.system(size: 24))
                }
                .tint(.black)
            }
            .padding()
            
            TextField("", text: $searchValue)
                .placeholder(when: searchValue.isEmpty) {
                    HStack {
                        Image(systemName: "magnifyingglass")
                        Text("Search")
                    }
                }
                .textFieldStyle(OvalTextFieldStyle())
                .padding(.horizontal)
            
            Rectangle()
                .fill(
                    LinearGradient(
                        colors: [.darkBlue, .darkGreen],
                        startPoint: .leading,
                        endPoint: .trailing
                    )
                )
                .frame(height: 4)
                .edgesIgnoringSafeArea(.horizontal)
        }
        .background(
            LinearGradient(
                colors: [.lightBlue, .lightGreen],
                startPoint: .leading,
                endPoint: .trailing
            )
        )
    }
}

extension View {
    func placeholder<Content: View>(
        when shouldShow: Bool,
        alignment: Alignment = .leading,
        @ViewBuilder placeholder: () -> Content) -> some View {

        ZStack(alignment: alignment) {
            placeholder().opacity(shouldShow ? 0.7 : 0).padding()
            self
        }
    }
}

#Preview {
    HomeToolbar()
}

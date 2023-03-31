//
//  ButtonFavorite.swift
//  Xplore
//
//  Created by KEVIN on 22/03/2023.
//

import SwiftUI

struct ButtonFavorite: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(.yellow)
                .frame(width: 140, height: 40)
            NavigationLink {
                FavoritesView()
            } label: {
                Label("Favoris", systemImage: "star.fill")
            }
            .foregroundColor(.white)
        }
    }
}

struct ButtonFavorite_Previews: PreviewProvider {
    static var previews: some View {
        ButtonFavorite()
    }
}

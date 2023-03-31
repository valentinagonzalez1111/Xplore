//
//  ButtonFilters.swift
//  Xplore
//
//  Created by KEVIN on 22/03/2023.
//

import SwiftUI

struct ButtonFilters: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(.yellow)
                .frame(width: 140, height: 40)
            NavigationLink {
                FiltersView()
            } label: {
                Label("Filtres", systemImage: "line.3.horizontal.decrease.circle.fill")
            }
            .foregroundColor(.white)
        }
    }
}

struct ButtonFilters_Previews: PreviewProvider {
    static var previews: some View {
        ButtonFilters()
    }
}

//
//  FavoritesView.swift
//  Xplore
//
//  Created by KEVIN on 23/03/2023.
//

import SwiftUI

struct FavoritesView: View {
    
    @AppStorage("favorites") var favorites: [String] = []
    
    var body: some View {
        VStack{
            ForEach(favStringToActivity()){ activity in
                VStack {
                    HStack {
                        Image(activity.image)
                            .frame(width: 30, height: 30)
                            .clipShape(Circle())
                        Text(activity.name)
                    }
                }
            }
        }
    }
    
    func favStringToActivity()->[Activity]{
        let favs = activities.filter { act in
            favorites.contains(act.name)
        }
        return favs
    }
    
}

struct FavoritesView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesView()
    }
}

//
//  DescriptionActivityView.swift
//  Xplore
//
//  Created by KEVIN on 22/03/2023.
//

import SwiftUI
import CoreLocation

struct DescriptionActivityView: View {
    
    @Binding var description: Activity
    
    @AppStorage("favorites") var favorites: [String] = []
    @AppStorage("doneActivities") var doneActivities: [String] = []
    
    @State private var done = false
    
    var body: some View {
        VStack {
            ZStack {
                Rectangle()
                    .frame(width: 400, height: 80)
                Image(description.image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
            }
            ZStack {
                RoundedRectangle(cornerRadius: 25)
                    .frame(height: 300)
                    .foregroundColor(Color("blue"))
                ScrollView(showsIndicators: false) {
                    Text(description.description)
                        .font(.title2)
                        .foregroundColor(.white)
                        .padding(20)
                }
            }
            .padding()
            HStack {
                Text("Déjà testé :")
                Button {
                    if doneActivities.contains(description.name) {
                        doneActivities.removeAll { descName in description.name == descName }
                    } else {
                        doneActivities.append(description.name)
                    }
                } label: {
                    Image(systemName: isDone() ? "person.fill.checkmark" : "person.fill.questionmark")
                        .foregroundColor(isDone() ? .accentColor : .secondary)
                        .font(.system(size: isDone() ? 26 : 20))
                }
                .padding(.horizontal, 10)
                HStack {
                    Spacer()
                    Text("Favoris")
                    Button(action: {
                        if favorites.contains(description.name) {
                            favorites.removeAll { descName in description.name == descName }
                        } else {
                            favorites.append(description.name)
                        }
                    }) {
                        Image(systemName: isFavorite() ? "star.fill" : "star")
                            .foregroundColor(isFavorite() ? .yellow : .gray)
                            .font(.system(size: isFavorite() ? 26 : 20))
                    }
                }
            }
            .padding(.horizontal, 30)
            Spacer()
        }
    }
    
    func isFavorite()->Bool{
        return favorites.contains(description.name)
    }
    
    func isDone()->Bool{
        return doneActivities.contains(description.name)
    }
    
}

struct DescriptionActivityView_Previews: PreviewProvider {
    static var previews: some View {
        DescriptionActivityView(description: .constant(Activity(name: "Pic de nore", image: "pic_de_nore", distances: 89, description: "Point culminant de la Montagne Noire, le pic de Nore s’élève à 1 211 mètres d’altitude et offre un panorama incroyable. A pied ou à vélo, prenez de l’altitude et venez-vous oxygéner sur le plus haut sommet de la Montagne Noire : le Pic de Nore. Celui-ci, situé en surplomb de Mazamet, sur la ligne de crête séparant le Tarn et l’Aude, offre des points de vue magnifiques à 360°. Alors, prêt(s) pour une belle escapade ?", categories: [0], coordinate: (CLLocationCoordinate2D(latitude: 43.424445, longitude: 2.461937)))))
    }
}

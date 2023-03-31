//
//  FiltersView.swift
//  Xplore
//
//  Created by KEVIN on 23/03/2023.
//

import SwiftUI

enum chooseActivities: Int {
    case Visites = 0
    case Nature = 1
    case Festival = 2
}

struct FiltersView: View {
    
    
    @State var selectedActivities = chooseActivities.Visites
    
    var body: some View {
        NavigationStack {
            VStack {
                Picker("Activités", selection: $selectedActivities) {
                    Text("Visites")
                        .tag(chooseActivities.Visites)
                    Text("Natures")
                        .tag(chooseActivities.Nature)
                    Text("Festivals")
                        .tag(chooseActivities.Festival)
                }
                .pickerStyle(.wheel)
                NavigationLink(destination: ActivityListView(filtres: [selectedActivities])) {
                    Text("Valider")
                }
            }
        }
        .navigationTitle("Retour")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct FiltersView_Previews: PreviewProvider {
    static var previews: some View {
        FiltersView()
    }
}

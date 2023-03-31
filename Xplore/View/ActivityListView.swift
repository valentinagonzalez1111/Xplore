//
//  ActivityListView.swift
//  Xplore
//
//  Created by KEVIN on 22/03/2023.
//

import SwiftUI

struct ActivityListView: View {
    
    var filtres: [chooseActivities]
    
    var body: some View {
        NavigationStack {
            VStack {
                HStack(spacing: 70) {
                    ButtonFilters()
                    ButtonFavorite()
                }
                .padding(.vertical, 30)
                ScrollView {
                    VStack(alignment: .leading){
                        ForEach(activities.filter({
                            var isFiltered = false
                            for filtre in filtres {
                                if $0.categories.contains(filtre.rawValue) {
                                    isFiltered = true
                                }
                            }
                            return isFiltered
                        })) { activity in
                            NavigationLink(destination: {
                                DescriptionActivityView(description: .constant(activity))
                            }, label: {
                                HStack(spacing: 20) {
                                    Image(activity.image)
                                        .resizable()
                                        .frame(width: 50, height: 50)
                                        .clipShape(Circle())
                                    Spacer()
                                    VStack {
                                        Text(activity.name)
                                        Text("\(activity.distances) kms")
                                    }
                                    Spacer()
                                    Image(systemName: "arrow.forward")
                                        .padding()
                                }
                            })
                            Divider()
                        }
                    }
                    .padding()
                }.frame(height: 480)
                    .background(Color("lightblue"))
            }
        }
    }
}

struct ActivityListView_Previews: PreviewProvider {
    static var previews: some View {
        ActivityListView(filtres: [.Visites] )
    }
}

//
//  HomeView.swift
//  Xplore
//
//  Created by KEVIN on 22/03/2023.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack {
            VStack {
                ZStack {
                    Color("lightblue")
                    VStack{
                        Image("logo_app")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(height: 180)
                            .padding(.vertical)
                        ScrollView {
                            Label("Visites", systemImage: "binoculars.fill")
                                .font(.title)
                                .fontWeight(.heavy)
                                .padding()
                            ScrollView(.horizontal, showsIndicators: false) {
                                HStack {
                                    ForEach(activityCategories[0].activities) { activity in
                                        NavigationLink(destination: {
                                            DescriptionActivityView(description:.constant(activity))
                                        }, label: {
                                            HStack {
                                                Image(activity.image)
                                                    .resizable()
                                                    .frame(width: 87, height: 80)
                                                    .clipShape(Circle())
                                            }
                                        })
                                    }
                                }
                                Spacer()
                            }
                            Label("Natures", systemImage: "figure.hiking")
                                .font(.title)
                                .fontWeight(.heavy)
                                .padding()
                            ScrollView(.horizontal, showsIndicators: false) {
                                HStack {
                                    ForEach(activityCategories[1].activities) { activity in
                                        NavigationLink {
                                            DescriptionActivityView(description: .constant(activity))
                                        } label: {
                                            HStack{
                                                Image(activity.image)
                                                    .resizable()
                                                    .frame(width: 87, height: 80)
                                                    .clipShape(Circle())
                                            }
                                        }
                                    }
                                }
                                Spacer()
                            }
                            Label("Festivals", systemImage: "hifispeaker.2.fill")
                                .font(.title)
                                .fontWeight(.heavy)
                                .padding()
                            ZStack {
                                ScrollView(.horizontal, showsIndicators: false) {
                                    HStack{
                                        ForEach(activityCategories[2].activities) { activity in
                                            NavigationLink {
                                                DescriptionActivityView(description: .constant(activity))
                                            } label: {
                                                HStack {
                                                    Image(activity.image)
                                                        .resizable()
                                                        .frame(width: 87, height: 80)
                                                        .clipShape(Circle())
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
            .navigationTitle("Retour")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarHidden(true)
            .edgesIgnoringSafeArea(.top)
        }
    }
}


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}




//
//  MainView.swift
//  Xplore
//
//  Created by KEVIN on 22/03/2023.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView{
            HomeView()
                .tabItem{
                    Image(systemName: "figure.hiking")
                    Text("Activités")
                }
            MapView()
                .tabItem{
                    Image(systemName: "globe.europe.africa.fill")
                    Text("Maps")
                }
            MainChat()
                .tabItem{
                    Image(systemName: "message.badge.filled.fill")
                    Text("Messages")
                }
            LoginView()
                .tabItem{
                    Image(systemName: "person.2.circle.fill")
                    Text("Profil")
                }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}





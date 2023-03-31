//
//  MainChat.swift
//  Xplore
//
//  Created by KEVIN on 22/03/2023.
//

import SwiftUI

struct MainChat: View {
    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    VStack {
                        Text("Appuyez sur la photo d'un utilisateur pour parler en privée")
                            .foregroundColor(Color.gray)
                            .padding(.top, 55.0)
                        Divider()
                    }
                    VStack {
                        Image("profilpic")
                            .resizable()
                            .frame(width: 125, height: 90)
                            .clipShape(Circle())
                        Text("Kristen Duhart")
                            .font(.footnote)
                            .foregroundColor(Color.gray)
                            .multilineTextAlignment(.center)
                    }
                }
                Spacer()
                VStack {
                    Image(systemName: "arrowtriangle.down.fill")
                        .foregroundColor(.gray)
                        .padding(.leading, -190.0)
                        .padding(.bottom)
                    Text("Utilisateurs")
                        .font(.title2)
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                        .padding(.leading, -190.0)
                    ScrollView(.horizontal, showsIndicators: false) {
                        ScrollViewReader { value in
                            HStack {
                                ForEach(people) { user in
                                    NavigationLink(destination: ChatPrivate(person: user)) {
                                        VStack {
                                            Image(user.photo)
                                                .resizable()
                                                .aspectRatio(contentMode: .fill)
                                                .frame(width: 70, height: 70)
                                                .clipShape(Circle())
                                                .foregroundColor(user.color)
                                            Text(user.person)
                                                .foregroundColor(.black)
                                        }
                                    }
                                    .padding(.horizontal, 7)
                                    .onAppear {
                                        value.scrollTo(people.last?.id)
                                    }
                                }
                            }
                            Spacer()
                        }
                    }
                }
                TextBar()
            }
            .navigationTitle("Chat général")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}
struct MainChat_Previews: PreviewProvider {
    static var previews: some View {
        MainChat()
    }
}





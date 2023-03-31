//
//  UsersView.swift
//  Xplore
//
//  Created by KEVIN on 22/03/2023.
//

import SwiftUI

struct ChatPrivate: View {
    
    var person: Staff
    
    var body: some View {
        VStack {
            NavigationLink {
                ProfilView(person: Staff(person: person.person, photo: person.photo, color: person.color))
            } label: {
                VStack {
                    Image(person.photo)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 90, height: 90)
                        .clipShape(Circle())
                    Text(person.person)
                        .foregroundColor(.mint)
                    Text("Voir profil")
                        .font(.footnote)
                        .foregroundColor(Color.gray)
                        .multilineTextAlignment(.center)
                }
                .padding(10)
            }
            VStack {
                Image("profilpic")
                    .resizable()
                    .frame(width: 90, height: 60)
                    .clipShape(Circle())
                Text("Kristen Duhart")
                    .font(.footnote)
                    .foregroundColor(Color.gray)
                    .multilineTextAlignment(.center)
            }
            Spacer()
            TextBar()
        }
        .navigationTitle("Chat")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct UsersView_Previews: PreviewProvider {
    static var previews: some View {
        ChatPrivate(person: Staff(person: "person", photo: "person.circle.fill", color: .green))
    }
}

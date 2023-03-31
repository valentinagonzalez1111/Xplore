//
//  ContentView.swift
//  Xplore_Interface
//
//  Created by Chikaodili Deng on 22/03/2023.
//

import SwiftUI

struct LoginView: View {
    
    @State private var username: String = ""
    @State private var address: String = ""
    @State private var email: String = ""
    @State private var passcode: String = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                Image(systemName: "person.circle")
                    .resizable()
                    .frame(width:140,height: 140)
                    .foregroundColor(.mint)
                    .padding()
                ZStack(alignment: .center) {
                    RoundedRectangle(cornerRadius: 7)
                        .frame(width: 365, height:36)
                        .foregroundColor(.mint)
                    TextField("Nom :", text: $username)
                        .fontWeight(.black)
                        .textFieldStyle(.roundedBorder)
                        .padding()
                        .disableAutocorrection(true)
                }
                ZStack {
                    RoundedRectangle(cornerRadius: 7)
                        .frame(width: 365, height:36)
                        .foregroundColor(.mint)
                    TextField("Adresse :", text: $address)
                        .fontWeight(.black)
                        .textFieldStyle(.roundedBorder)
                        .padding()
                        .disableAutocorrection(true)
                }
                ZStack {
                    RoundedRectangle(cornerRadius: 7)
                        .frame(width: 365, height:36)
                        .foregroundColor(.mint)
                    TextField("E-mail :", text: $email)
                        .fontWeight(.black)
                        .textFieldStyle(.roundedBorder)
                        .padding()
                        .disableAutocorrection(true)
                }
                ZStack {
                    RoundedRectangle(cornerRadius: 7)
                        .frame(width: 365, height:36)
                        .foregroundColor(.mint)
                    SecureField("Mot de passe :", text: $passcode)
                        .fontWeight(.black)
                        .textFieldStyle(.roundedBorder)
                        .padding()
                        .disableAutocorrection(true)
                }
                HStack {
                    ZStack(alignment:.leading) {
                        RoundedRectangle(cornerRadius: 20)
                            .frame(width: 170, height:30)
                            .foregroundColor(.yellow)
                            .padding(.leading,-5)
                        NavigationLink (destination: UserProfile()){
                            Text("Créer compte")
                                .fontWeight(.bold)
                                .padding(.leading, 23)
                        }
                    }
                    ZStack(alignment: .leading) {
                        RoundedRectangle(cornerRadius: 20)
                            .frame(width: 160, height:30)
                            .foregroundColor(.yellow)
                            .padding(.leading, 10)
                        
                        NavigationLink(destination: UserProfile()) {
                            Text("Se connecter")
                                .fontWeight(.bold)
                                .padding(.leading, 40)
                        }
                    }
                }
            }
            .navigationTitle("Profil")
            .navigationBarTitleDisplayMode(.inline)
            Divider()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}


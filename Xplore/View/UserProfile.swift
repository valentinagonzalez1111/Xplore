//
//  UserProfile.swift
//  Xplore
//
//  Created by KEVIN on 22/03/2023.
//


import SwiftUI

struct UserProfile: View {
    
    @State private var onClick0: Bool = false
    @State private var onClick1: Bool = false
    @State private var onClick2: Bool = false
    
    @AppStorage("doneActivities") var doneActivities: [String] = []
    
    var body: some View {
        NavigationStack {
            VStack {
                Text("Profil")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding()
                Image(systemName: "person.circle")
                    .resizable()
                    .frame(width: 150.0, height: 150.0)
                    .foregroundColor(.mint)
                Text("Nom d'utilisateur")
                    .foregroundColor(.gray)
                    .font(.title2)
                    .fontWeight(.bold)
                Spacer()
                HStack {
                    Text("Activités faites :")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(.gray)
                        .padding(.leading, 10)
                        .padding(.bottom, 20)
                    
                    Spacer()
                }
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(isDone()) { activity in
                            NavigationLink(destination: {
                                DescriptionActivityView(description: .constant(activity))
                            }, label: {
                                HStack{
                                    Image(activity.image)
                                        .resizable()
                                        .frame(width: 80, height: 80)
                                        .clipShape(Circle())
                                }
                            })
                        }
                    }
                    .padding(.leading, 7)
                    .padding(.bottom, 20)
                }
                VStack {
                    HStack {
                        Text("Intérêts :")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(.gray)
                            .padding(.leading, 10)
                            .padding(.top, 20)
                        Spacer()
                    }
                    HStack{
                        Button{
                            onClick0.toggle()
                        } label: {
                            ZStack{
                                RoundedRectangle(cornerRadius: 10)
                                    .frame(width: 100, height:50)
                                    .foregroundColor(onClick0 ? .mint : .yellow)
                                Text("Visite")
                                    .font(.title3)
                                    .foregroundColor(.white)
                            }
                        }
                        
                        Button{
                            onClick1.toggle()
                        } label: {
                            ZStack {
                                RoundedRectangle(cornerRadius: 10)
                                    .frame(width: 100, height:50)
                                    .foregroundColor(onClick1 ? .mint : .yellow)
                                
                                Text("Natures")
                                    .font(.title3)
                                    .foregroundColor(Color.white)
                            }
                        }
                        Button{
                            onClick2.toggle()
                        } label: {
                            ZStack {
                                RoundedRectangle(cornerRadius: 10)
                                    .frame(width: 100, height:50)
                                    .foregroundColor(onClick2 ? .mint : .yellow)
                                
                                Text("Festivales")
                                    .font(.title3)
                                    .foregroundColor(Color.white)
                            }
                        }
                    }
                }
                Spacer()
            }
        }
    }
    
    func isDone()->[Activity]{
        let done = activities.filter { act in
            doneActivities.contains(act.name)
        }
        return done
    }
    
}

struct UserProfile_Previews: PreviewProvider {
    static var previews: some View {
        UserProfile()
    }
}

struct Activite: Identifiable {
    var id = UUID()
    var image: String
}

var activites = [
    Activite(image: "Act1"),
    Activite(image: "Act2"),
    Activite(image: "Act3"),
    Activite(image:"Act4"),
]




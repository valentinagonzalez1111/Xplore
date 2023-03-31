//
//  ProfilView.swift
//  Xplore
//
//  Created by KEVIN on 22/03/2023.
//

import SwiftUI

struct ProfilView: View {
    
    var person: Staff
    @State private var onClick0 : Bool = false
    @State private var onClick1 : Bool = false
    @State private var onClick2 : Bool = false
    
    @AppStorage("doneActivities") var doneActivities: [String] = []
    
    var body: some View {
        NavigationStack {
            VStack {
                VStack {
                    Image(person.photo)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 130, height: 130)
                        .clipShape(Circle())
                        .padding(10)
                    Text(person.person)
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.center)
                }
                .padding(70)
                HStack {
                    Text("Activités faites")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                        .padding(.bottom, 20)
                }
                .padding(.leading, -190.0)
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
                        Text("Intérêts")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                        Spacer()
                    }
                    .padding(.leading, 10)
                    HStack {
                        ZStack {
                            Button{
                                onClick0.toggle()
                            } label: {
                                ZStack{
                                    RoundedRectangle(cornerRadius: 10)
                                        .frame(width: 100, height:50)
                                        .foregroundColor(onClick0 ? .blue : .mint)
                                    Text("Visites")
                                        .font(.title3)
                                        .foregroundColor(Color.white)
                                }
                            }
                        }
                        Button{
                            onClick1.toggle()
                        } label: {
                            ZStack{
                                RoundedRectangle(cornerRadius: 10)
                                    .frame(width: 100, height:50)
                                    .foregroundColor(onClick1 ? . blue: .mint)
                                
                                Text("Natures")
                                    .font(.title3)
                                    .foregroundColor(Color.white)
                            }
                        }
                        Button{
                            onClick2.toggle()
                        } label: {
                            ZStack{
                                RoundedRectangle(cornerRadius: 10)
                                    .frame(width: 100, height:50)
                                    .foregroundColor(onClick2 ? .blue : .mint)
                                Text("Festivales")
                                    .font(.title3)
                                    .foregroundColor(Color.white)
                            }
                        }
                    }
                }
                .padding()
            }
            .navigationTitle("Profil")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
    
    func isDone()->[Activity]{
        let done = activities.filter { act in
            doneActivities.contains(act.name)
        }
        return done
    }
    
}

struct ProfilView_Previews: PreviewProvider {
    static var previews: some View {
        ProfilView(person: Staff(person: "Val", photo: "person.circle.fill", color: .blue))
    }
}


//
//  TextBar.swift
//  Xplore
//
//  Created by KEVIN on 22/03/2023.
//

import SwiftUI

struct TextBar: View {
    
    @State private var messageText = ""
    @State private var messages = [Message]()
    
    var body: some View {
        VStack{
            List {
                ForEach(messages) { message in
                    HStack {
                        if message.isSender {
                            Spacer()
                        }
                        Text(message.text)
                            .padding(10)
                            .foregroundColor(.white)
                            .background(message.isSender ? Color.blue : Color.white)
                            .cornerRadius(10)
                        if !message.isSender {
                            Spacer()
                        }
                    }
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.white)
                    )
                    .padding(5)
                }
            }
            .listStyle(PlainListStyle())
            HStack {
                TextField("Ecrire ...", text: $messageText)
                    .padding(.horizontal)
                    .keyboardType(.alphabet)
                
                Button(action: {
                    let newMessage = Message(text: messageText, timestamp: Date(), isSender: true)
                    messages.append(newMessage)
                    messageText = ""
                }, label: {
                    Text("Envoyer")
                })
                .padding(.horizontal)
            }
            .frame(height: 50)
            .background(Color.gray.opacity(0.2))
        }
        .padding(.bottom, 20)
    }
}

struct TextBar_Previews: PreviewProvider {
    static var previews: some View {
        TextBar()
    }
}

struct Message: Identifiable {
    let id = UUID()
    let text: String
    let timestamp: Date
    let isSender: Bool
}

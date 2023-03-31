//
//  Staff.swift
//  Xplore
//
//  Created by KEVIN on 22/03/2023.
//

import Foundation
import SwiftUI

struct Staff: Identifiable {
    var id = UUID()
    var person: String
    var photo: String
    let color: Color
}

var people = [
    Staff(person: "Abdellah", photo: "abdellah", color: .green),
    Staff(person: "Dimitri", photo: "dimitri", color: .yellow),
    Staff(person: "Pauline", photo: "pauline", color: .purple),
    Staff(person: "Kelian", photo: "kelian", color: .mint),
    Staff(person: "Yann", photo: "yann", color: .green),
    Staff(person: "Atmani", photo: "atmani2", color: .yellow),
    Staff(person: "Kévin", photo: "kevin", color: .purple),
    Staff(person: "Chikaodili", photo: "chika", color: .mint),
    Staff(person: "Valentina", photo: "val", color: .mint),
    Staff(person: "User1", photo: "blueuser", color: .mint),
    Staff(person: "User2", photo: "blueuser", color: .mint)
]

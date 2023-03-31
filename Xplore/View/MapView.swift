//
//  MapView.swift
//  Xplore
//
//  Created by KEVIN on 22/03/2023.
//

import SwiftUI

struct MapView: View {
    var body: some View {
        NavigationStack {
            VStack {
                PickerView()
            }
            .navigationTitle("Activités")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}

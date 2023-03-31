//
//  PickerView.swift
//  Xplore
//
//  Created by KEVIN on 22/03/2023.
//

import SwiftUI
import CoreLocation

struct PickerView: View {
    
    enum ChoosePicker {
        case map
        case liste
    }
    
    @State private var selectedPicker = ChoosePicker.map
    
    var body: some View {
        VStack {
            NavigationStack {
                Picker("Picker", selection: $selectedPicker) {
                    Text("Map")
                        .tag(ChoosePicker.map)
                    Text("Liste")
                        .tag(ChoosePicker.liste)
                }
                .frame(width: 150)
                .pickerStyle(SegmentedPickerStyle())
                if selectedPicker == .map {
                    MapDetailView()
                } else {
                    ActivityListView(filtres: [.Visites, .Nature, .Festival])
                }
                Spacer()
            }
        }
    }
}

struct PickerView_Previews: PreviewProvider {
    static var previews: some View {
        PickerView()
    }
}

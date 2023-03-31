//
//  MapDetailView2.swift
//  Xplore
//
//  Created by KEVIN on 27/03/2023.
//

import SwiftUI
import MapKit

struct MapDetailView: View {
    
    @StateObject private var viewModel = MapDetail()
    @State var showModal: Bool = false
    @State var selectedActivity = activities[0]
    
    var body: some View {
        Map(
            coordinateRegion: $viewModel.region,
            showsUserLocation: true,
            userTrackingMode: .constant(.none),
            annotationItems: activities) { activity in
                MapAnnotation(coordinate: activity.coordinate) {
                    Button {
                        selectedActivity = activity
                        self.showModal.toggle()
                    } label: {
                        Image(systemName: "mappin.circle.fill")
                            .resizable()
                            .font(.system(size: 35))
                            .foregroundColor(.red)
                    }
                }
            }
            .onAppear {
                viewModel.checkIfLocationServicesIsEnabled()
            }
            .sheet(isPresented: $showModal) {
                DescriptionActivityView(description: $selectedActivity)
            }
    }
}


struct MapDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MapDetailView()
    }
}

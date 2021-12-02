//
//  ContentView.swift
//  Lab10Zh
//
//  Created by Zhanibek on 18.11.2021.
//

import SwiftUI

struct ContentView: View {
    @State var historyObjects = objects
    @State var showMap = false
    
    var body: some View {
        NavigationView {
            if !showMap {
                VStack {
                    HStack {
                        
                        Button("На карте") {
                            self.showMap = true
                        }
                        .padding()
                    }
            List {
                ForEach(historyObjects) { object in
                    NavigationLink {
                        DetailedView(object: object)
                    } label: {
                        ItemView(object: object)
                    }

                }
            }
            }
            .listStyle(.plain)
            .navigationBarTitle("История")
            } else {
                ZStack(alignment: .top) {
                    
                    // Show Map
                    MapView()
                        .ignoresSafeArea()
                                            
                    // Rectangle overlay
                    
                    ZStack {
                        
                        Rectangle()
                            .foregroundColor(.white)
                            .cornerRadius(5)
                            .frame(height: 48)
                        
                        HStack {
                            
                            Button("Список") {
                                self.showMap = false
                            }
                        }
                        .padding()
                    }
                    .padding()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}




struct SevenFood:  Identifiable, Decodable {
    

    var id = UUID()
    var title: String
    var latitude: Double
    var longitude: Double
    
}
    
    var busineses = [
    
    
        SevenFood(title: "7food", latitude: 43.239200, longitude: 76.905821),
        SevenFood(title: "7food", latitude: 43.249829, longitude: 76.888155)
    ]

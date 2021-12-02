//
//  ItemView.swift
//  Lab10Zh
//
//  Created by Zhanibek on 18.11.2021.
//

import SwiftUI

struct ItemView: View {
    var object = objects[0]
    
    var body: some View {
        HStack {
            Image("fridge")
                .resizable()
                .frame(width: 100, height: 100)
            
            VStack(alignment: .leading) {
                Text("\(object.address)")
                Text("\(object.count) \(object.name)")
                Text("KZT \(object.price)")
            }
            
        }
    }
}

struct ItemView_Previews: PreviewProvider {
    static var previews: some View {
        ItemView()
    }
}

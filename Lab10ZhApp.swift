//
//  Lab10ZhApp.swift
//  Lab10Zh
//
//  Created by Zhanibek on 18.11.2021.
//

import SwiftUI

@main
struct Lab10ZhApp: App {
    var body: some Scene {
        WindowGroup {
            LaunchView()
                .environmentObject(ContentModel())
        }
    }
}

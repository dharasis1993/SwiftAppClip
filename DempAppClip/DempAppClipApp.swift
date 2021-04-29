//
//  DempAppClipApp.swift
//  DempAppClip
//
//  Created by dharasis behera on 28/04/21.
//

import SwiftUI

@main
struct DempAppClipApp: App {
    @StateObject var viewModel = EntityViewModel()
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: viewModel)
        }
    }
}

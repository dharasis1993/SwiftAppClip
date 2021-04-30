//
//  DemoClipApp.swift
//  DemoClip
//
//  Created by Dharasis Behera on 30/04/21.
//

import SwiftUI

@main
struct DemoClipApp: App {
    
    @StateObject var viewModel = EntityViewModel()
    @StateObject private var model = ClipModel()
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: viewModel)
                .environmentObject(model)
                .onContinueUserActivity(
                  NSUserActivityTypeBrowsingWeb,
                  perform: handleUserActivity) 
             }
        }

    func handleUserActivity(_ userActivity: NSUserActivity) {

        guard
        let incomingURL = userActivity.webpageURL,
        let components = URLComponents(
          url: incomingURL,
          resolvingAgainstBaseURL: true),
        let queryItems = components.queryItems
      else {
        return
      }

        guard
          let index = queryItems.first(where: { $0.name == "index" })?.value,
          let idx = Int(index)
        else {
          return
        }

        print("QueryItem: \(idx)")
        model.selectedStore = idx
    }

}

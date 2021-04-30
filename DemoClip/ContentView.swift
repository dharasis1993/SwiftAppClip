//
//  ContentView.swift
//  DemoClip
//
//  Created by Dharasis Behera on 30/04/21.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var viewModel: EntityViewModel
    @EnvironmentObject private var model: ClipModel
    var body: some View {
        
        if let selectedStore = model.selectedStore{
            DetailEntityView(modelView: viewModel, index: selectedStore)
        }else{
            Text("Loading")
        }
        
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: EntityViewModel())
    }
}

//
//  ContentView.swift
//  DempAppClip
//
//  Created by dharasis behera on 28/04/21.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel: EntityViewModel
    var body: some View {
        StoreMainView(viewModel: viewModel)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: EntityViewModel())
    }
}

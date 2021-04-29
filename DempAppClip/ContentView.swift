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
        NavigationView{
        List{
            ForEach(0..<viewModel.entity.count){(index) in
                NavigationLink(destination: DetailEntityView(modelView: viewModel, index: index)){
                    EntityRow(enity: viewModel.entity[index])
                }
            }
        }
        .navigationTitle("App Clip Store")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: EntityViewModel())
    }
}

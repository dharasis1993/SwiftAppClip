//
//  StoreMainView.swift
//  DempAppClip
//
//  Created by Dharasis Behera on 30/04/21.
//

import SwiftUI

struct StoreMainView: View {
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

struct StoreMainView_Previews: PreviewProvider {
    static var previews: some View {
        StoreMainView(viewModel: EntityViewModel())
    }
}

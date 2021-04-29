//
//  DetailEntityView.swift
//  DempAppClip
//
//  Created by dharasis behera on 29/04/21.
//

import SwiftUI

struct DetailEntityView: View {
    @Environment(\.presentationMode) var presentationMode
    @ObservedObject var modelView: EntityViewModel
    var index: Int
    var entity: Entity {
        modelView.entity[index]
    }
    var body: some View {
        
        
        ScrollView {
            entity.image
                .padding()
                .aspectRatio(contentMode: .fill)
            

            VStack(alignment: .leading) {
                VStack(alignment:.leading){
                                  Text(entity.name)
                                      .font(.title)
                                      .foregroundColor(.primary)
                    Text(entity.category)
                        .font(.subheadline)
                   
                    }
                .font(.subheadline)
                .foregroundColor(.secondary)

                Divider()
              
                Text("About \(entity.name)")
                                   .font(.title2)
                Text(entity.description)
                Button {
                    modelView.entity[index].quantity -= 1
                    self.presentationMode.wrappedValue.dismiss() 
                } label: {
                    Text("BUY")
                        .padding(20)
                }
                .frame(minWidth: 0, maxWidth: .infinity)
                .foregroundColor(.white)
                .background(Color.blue)

            }
            .padding()
            

        }
        .navigationTitle(entity.name)
        .navigationBarTitleDisplayMode(.inline)
 
        
        
        

    }
    
}

struct DetailEntityView_Previews: PreviewProvider {
    static var previews: some View {
        DetailEntityView(modelView: EntityViewModel(), index: 0)
    }
}

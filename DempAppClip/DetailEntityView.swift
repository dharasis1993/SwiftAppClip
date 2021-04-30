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
    @State private var buttonDisabled = false
    @State private var buttonText = "BUY"


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
//                                  Text(entity.name)
                    TextField("", text: $modelView.entity[index].name)
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
                    buttonDisabled  =  true
                    buttonText = "PURCHASED"
                } label: {
                    Text(buttonText)
                        .padding()
                }
                .disabled(buttonDisabled == true)
                .frame(minWidth: 0, maxWidth: .infinity)
                .foregroundColor(.white)
                .background(buttonDisabled ?  Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)) :   Color.blue)


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

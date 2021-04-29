//
//  EntityRow.swift
//  DempAppClip
//
//  Created by dharasis behera on 29/04/21.
//

import SwiftUI

struct EntityRow: View {
   var enity: Entity
    var body: some View {
        HStack{
            enity.image.resizable()
                .frame(width: 50, height: 50)
            VStack(alignment: .leading){
                Text(enity.name)
                    .font(.headline)
                Text(enity.category)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
            Spacer()
            Text(String(enity.quantity))
                .font(.subheadline)
        }
        .padding()
        
    }
}

struct EntityRow_Previews: PreviewProvider {
    static var previews: some View {
        EntityRow(enity: EntityViewModel().entity[0])
    }
}

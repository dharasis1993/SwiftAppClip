//
//  ViewModel.swift
//  DempAppClip
//
//  Created by dharasis behera on 28/04/21.
//

import Foundation
 
class EntityViewModel: ObservableObject{
    @Published var entity: [Entity]  = []
    @Published var index: Int = 0
    
    init() {
        entity = load("EntityData.json")
    }
    
    func load<T: Decodable>(_ filename: String) -> T {
        let data: Data
        print("Loaded")
        guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
        else {
            fatalError("Couldn't find \(filename) in main bundle.")
        }

        do {
            data = try Data(contentsOf: file)
        } catch {
            fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
        }

        do {
            let decoder = JSONDecoder()
            return try decoder.decode(T.self, from: data)
        } catch {
            fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
        }
    }
}

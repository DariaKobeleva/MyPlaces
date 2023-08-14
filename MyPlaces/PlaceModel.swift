//
//  PlaceModel.swift
//  MyPlaces
//
//  Created by Дарья Кобелева on 04.08.2023.
//

import Foundation
import UIKit

struct Place {
    
    var name: String
    var location: String?
    var type: String?
    var image: UIImage?
    var restaurantImage: String?
    
    static let restaurantNames = [
        "Kafeterija", "Bela Reka", "Butique", "Stories",
        "TT_Bistro", "HookahHouse", "Heritage Rooftop Gastro Bar",
        "City Garden", "Sinnerman Jazz Club",
        "Caruso", "SkyLounge", "THE VIEW", "Kafeterija Secer"
        ]
    
   static func getPlaces() -> [Place] {
        
        var places = [Place]()
        
        for place in restaurantNames {
            places.append(Place(name: place , location: "Belgrade", type: "Ресторан", image: nil, restaurantImage: place))
        }
        
        return places
    }
}


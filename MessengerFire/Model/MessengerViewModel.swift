//
//  MessengerViewModel.swift
//  MessengerFire
//
//  Created by Sergey on 31.10.2020.
//

import Foundation
import UIKit



struct MessengerFeedViewModel {
    
    struct Cell: MessengerViewModel {
        
        var name: String
        
       
    }
    
    
    let myArray = ["один","два","три","четыре","пять"]

    
    let cells: [Cell]
}

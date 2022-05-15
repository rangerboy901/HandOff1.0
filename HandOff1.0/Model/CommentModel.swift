//
//  CommentModel.swift
//  HandOff1.0
//
//  Created by Joseph DeWeese on 5/15/22.
//

import Foundation
import SwiftUI

struct CommentModel: Identifiable, Hashable {
    
    var id = UUID()
    var commentID: String
    var userID: String // Id for the user in the database
    var userName: String  //username for the user in the database
    var content: String
    var dateCreated: Date
    
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}

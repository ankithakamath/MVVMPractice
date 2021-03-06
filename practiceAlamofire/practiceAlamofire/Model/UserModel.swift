//
//  UserModel.swift
//  practiceAlamofire
//
//  Created by Ankitha Kamath on 01/12/21.
//

import Foundation
import UIKit

struct UserModel : Codable {
    let uid : Int?
    let id : Int?
    let title : String?
    let completed : Bool?

    enum CodingKeys: String, CodingKey {
        case uid = "userId"
        case id = "id"
        case title = "title"
        case completed = "completed"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        uid = try values.decodeIfPresent(Int.self, forKey: .uid)
        id = try values.decodeIfPresent(Int.self, forKey: .id)
        title = try values.decodeIfPresent(String.self, forKey: .title)
        completed = try values.decodeIfPresent(Bool.self, forKey: .completed)
    }
    
    func getStatusColor() -> (String, UIColor){
        if completed ?? true{
            return ("COMPLETED", UIColor.systemBlue)
        }else{
            return ("NOT COMPLETED", UIColor.systemPink)
        }
    }

}

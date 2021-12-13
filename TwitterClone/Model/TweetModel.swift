//
//  TweetModel.swift
//  TwitterClone
//
//  Created by Elliot knight on 10/12/2021.
//

import Foundation


struct Tweet: Identifiable {
    var id = UUID()
    let profilePicture: String
    let profileName: String
    let arobase: String
    let tweetContent: String
    let date: Date
    


//    let image: String?
//    let video: String?
}
/* If we connect Tweet to Profile later
struct Profile: Identifiable {
    var id = UUID()
    let profilePicture: String
    let name: String
    let lastName: String
    let mail: String
    let phoneNumer: String
    let biography: String?
    let website: String?
    var localisation: String?
}
*/

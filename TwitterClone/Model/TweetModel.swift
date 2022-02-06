//
//  TweetModel.swift
//  TwitterClone
//
//  Created by Elliot knight on 10/12/2021.
//

import Foundation
import SwiftUI


struct Tweet: Identifiable {
    var id = UUID()
    var profilePicture: String
    var profileName: String
    var arobase: String
    var tweetContent: String
    var date: Date
//    let image: String?
//    let video: String?
}

enum ActionsInTweet: String, CaseIterable, Identifiable {
  
    
    case follow = "Suivre @JLennon"
    case hide = "Cacher Lennon"
    case hideConv = "Masquer cette conversation"
    case block = "Block @JLennon"
    case report = "Signaler le tweet"
    case seeResponse = "Voir les réponses masquées"
    
    var id: String { self.rawValue }
    
    
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

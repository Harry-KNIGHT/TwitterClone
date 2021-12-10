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
var tweets: [Tweet] = [
    
    Tweet(profilePicture: "NoneProfilePicture", profileName: "Elliot", arobase: "@Ellioto0o", tweetContent: "Aujourd'hui j'ai été manger des pâtes au restaurant c'était bon !"),
    Tweet(profilePicture: "NoneProfilePicture", profileName: "Steve Jobs", arobase: "@SJobs", tweetContent: "I eat Apple all the time !"),
    Tweet(profilePicture: "NoneProfilePicture", profileName: "Arthur Rimbaut", arobase: "@Rimbault", tweetContent: "Il n'y as pas de pommes rouge plus vertes qu'orange"),
    Tweet(profilePicture: "NoneProfilePicture", profileName: "Elliot", arobase: "@Ellioto0o", tweetContent: "Aujourd'hui j'ai été manger des pâtes au restaurant c'était bon !"),
    Tweet(profilePicture: "NoneProfilePicture", profileName: "Steve Jobs", arobase: "@SJobs", tweetContent: "I eat Apple all the time !"),
    Tweet(profilePicture: "NoneProfilePicture", profileName: "Arthur Rimbaut", arobase: "@Rimbault", tweetContent: "Il n'y as pas de pommes rouge plus vertes qu'orange"),
    Tweet(profilePicture: "NoneProfilePicture", profileName: "Elliot", arobase: "@Ellioto0o", tweetContent: "Aujourd'hui j'ai été manger des pâtes au restaurant c'était bon !"),
    Tweet(profilePicture: "NoneProfilePicture", profileName: "Steve Jobs", arobase: "@SJobs", tweetContent: "I eat Apple all the time !"),
    Tweet(profilePicture: "NoneProfilePicture", profileName: "Arthur Rimbaut", arobase: "@Rimbault", tweetContent: "Il n'y as pas de pommes rouge plus vertes qu'orange"),
    Tweet(profilePicture: "NoneProfilePicture", profileName: "Elliot", arobase: "@Ellioto0o", tweetContent: "Aujourd'hui j'ai été manger des pâtes au restaurant c'était bon !"),
    Tweet(profilePicture: "NoneProfilePicture", profileName: "Steve Jobs", arobase: "@SJobs", tweetContent: "I eat Apple all the time !"),
    Tweet(profilePicture: "NoneProfilePicture", profileName: "Arthur Rimbaut", arobase: "@Rimbault", tweetContent: "Il n'y as pas de pommes rouge plus vertes qu'orange"),
    Tweet(profilePicture: "NoneProfilePicture", profileName: "Elliot", arobase: "@Ellioto0o", tweetContent: "Aujourd'hui j'ai été manger des pâtes au restaurant c'était bon !"),
    Tweet(profilePicture: "NoneProfilePicture", profileName: "Steve Jobs", arobase: "@SJobs", tweetContent: "I eat Apple all the time !"),
    Tweet(profilePicture: "NoneProfilePicture", profileName: "Arthur Rimbaut", arobase: "@Rimbault", tweetContent: "Il n'y as pas de pommes rouge plus vertes qu'orange"),
    Tweet(profilePicture: "NoneProfilePicture", profileName: "Elliot", arobase: "@Ellioto0o", tweetContent: "Aujourd'hui j'ai été manger des pâtes au restaurant c'était bon !"),
    Tweet(profilePicture: "NoneProfilePicture", profileName: "Steve Jobs", arobase: "@SJobs", tweetContent: "I eat Apple all the time !"),
    Tweet(profilePicture: "NoneProfilePicture", profileName: "Arthur Rimbaut", arobase: "@Rimbault", tweetContent: "Il n'y as pas de pommes rouge plus vertes qu'orange"),
    Tweet(profilePicture: "NoneProfilePicture", profileName: "Elliot", arobase: "@Ellioto0o", tweetContent: "Aujourd'hui j'ai été manger des pâtes au restaurant c'était bon !"),
    Tweet(profilePicture: "NoneProfilePicture", profileName: "Steve Jobs", arobase: "@SJobs", tweetContent: "I eat Apple all the time !"),
    Tweet(profilePicture: "NoneProfilePicture", profileName: "Arthur Rimbaut", arobase: "@Rimbault", tweetContent: "Il n'y as pas de pommes rouge plus vertes qu'orange")
    
]

//
//  Post.swift
//  InstagramViewLayout
//
//  Created by Maxim Macari on 8/2/21.
//

import SwiftUI

struct Post: Identifiable {
    var id = UUID().uuidString
    var user: String
    var profile: String
    var postImage: String
    var postTitle: String
    var time: String
}

var posts = [
    Post(user: "Macarena", profile: "p1", postImage: "post1", postTitle: "Iphone 12 mini", time: "58 min ago"),
    Post(user: "Michael", profile: "p2", postImage: "post2", postTitle: "New game", time: "2 hours ago"),
    Post(user: "BNB", profile: "p3", postImage: "post3", postTitle: "Stock only go up", time: "20 min ago"),
    Post(user: "RobinHood", profile: "p4", postImage: "post4", postTitle: "Nice day...", time: "8 min ago"),
    Post(user: "PcElementos", profile: "p5", postImage: "post5", postTitle: "New Ram", time: "1 day ago")
]

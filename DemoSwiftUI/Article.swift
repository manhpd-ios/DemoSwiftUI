//
//  Article.swift
//  DemoSwiftUI
//
//  Created by DucManh on 15/03/2021.
//

import Foundation

class Article: ObservableObject {

    var groupId: String?

    var contents: String?

    var comments = [Comment]()

    var lastComment: Comment?

    @Published var isFavorite = false

    init(groupId: String, contents: String, comments: [Comment], lastComment: Comment? = nil) {
        self.groupId = groupId
        self.contents = contents
        self.comments = comments
        self.lastComment = lastComment
    }
}

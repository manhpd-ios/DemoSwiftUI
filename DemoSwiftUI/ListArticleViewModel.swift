//
//  ListArticleViewModel.swift
//  DemoSwiftUI
//
//  Created by DucManh on 15/03/2021.
//

import SwiftUI
import Combine

class ListArticleViewModel: ObservableObject {
    @Published var isExpaned = false
    @Published var listArticle: [Article]
    
    init() {
        self.listArticle = [Article(groupId: "1", contents: "", comments: []),
                            Article(groupId: "2", contents: "", comments: []),
                            Article(groupId: "3", contents: "", comments: []),
                            Article(groupId: "4", contents: "", comments: []),
                            Article(groupId: "5", contents: "", comments: []),
                            Article(groupId: "6", contents: "", comments: []),
                            Article(groupId: "7", contents: "", comments: []),
                            Article(groupId: "8", contents: "", comments: []),
                            Article(groupId: "9", contents: "", comments: []),
                            Article(groupId: "10", contents: "", comments: [])]
    }
}

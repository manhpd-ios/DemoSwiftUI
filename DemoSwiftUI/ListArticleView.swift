//
//  ContentView.swift
//  DemoSwiftUI
//
//  Created by DucManh on 12/03/2021.
//

import Combine
import SwiftUI

struct ListArticleView: View {
    @ObservedObject private var viewModel = ListArticleViewModel()
    private let screenSize = UIScreen.main.bounds
    private let heightItem: CGFloat = 70
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading, spacing: Padding.noPadding) {
                scrollView.overlay(expanedView.opacity(viewModel.isExpaned ? 1 : 0), alignment: .top)
            }
            .navigationBarTitle("Group demo", displayMode: .inline)
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading: leadingNavigationBarItem,
                                trailing: trailingNavigationBarItem)
        }
    }

    private var scrollView: some View {
        ScrollView {
            ForEach(0..<self.viewModel.listArticle.count, id: \.self) { indexPath in
                ArticleCellView(article: self.$viewModel.listArticle[indexPath]) { articleCellType in
                    if articleCellType == .delete {
                        self.viewModel.listArticle.remove(at: indexPath)
                    } else {
                        
                    }
                }
            }
        }
        .background(Color.gray)
        .disabled(viewModel.isExpaned)
    }
    
    private var trailingNavigationBarItem: some View {
        HStack {
            Button(action: {
                
            }) {
                imageBarItem("icon_arrow_down")
            }
            .padding(8)
            .buttonStyle(PlainButtonStyle())
            Button(action: {
                viewModel.isExpaned = !viewModel.isExpaned
            }) {
                imageBarItem(self.viewModel.isExpaned ? "icon_arrow_up" : "icon_arrow_down")
            }.buttonStyle(PlainButtonStyle())
        }
    }

    private var leadingNavigationBarItem: some View {
        Button(action: {

        }) {
            imageBarItem("ic_back")
                .offset(x: -10)
        }.buttonStyle(PlainButtonStyle())
    }

    private var expanedView: some View {
        ZStack {
            VStack(alignment: .leading, spacing: Padding.noPadding) {
                self.contentExpanedView
                Color.black.opacity(0.2)
                    .onTapGesture {
                        viewModel.isExpaned = !viewModel.isExpaned
                    }
            }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        }
    }

    private var contentExpanedView: some View {
        VStack(alignment: .leading, spacing: Padding.noPadding) {
            HStack(spacing: Padding.noPadding) {
                VStack(alignment: .leading, spacing: Padding.noPadding) {
                    HStack(spacing: Padding.noPadding) {
                        Text("SwiftUI Tutorials")
                            .frame(width: screenSize.width / 3)
                        Divider().padding(.vertical, 10)
                    }.frame(height: heightItem)
                    Divider().padding(.horizontal, 5)
                }
                VStack(alignment: .leading, spacing: Padding.noPadding) {
                    HStack(spacing: Padding.noPadding) {
                        Text("SwiftUI Tutorials")
                            .frame(width: screenSize.width / 3)
                        Divider().padding(.vertical, 10)
                    }.frame(height: heightItem)
                    Divider().padding(.horizontal, 5)
                }
                VStack(alignment: .leading, spacing: Padding.noPadding) {
                    HStack(spacing: Padding.noPadding) {
                        Text("SwiftUI Tutorials")
                            .frame(width: screenSize.width / 3)
                        Divider().padding(.vertical, 10)
                    }.frame(height: heightItem)
                    Divider().padding(.horizontal, 5)
                }
            }
            HStack(spacing: Padding.noPadding) {
                HStack(spacing: Padding.noPadding) {
                    Text("SwiftUI Tutorials")
                        .frame(width: screenSize.width / 3)
                    Divider().padding(.vertical, 10)
                }.frame(height: heightItem)
                HStack(spacing: Padding.noPadding) {
                    Text("SwiftUI Tutorials")
                        .frame(width: screenSize.width / 3)
                    Divider().padding(.vertical, 10)
                }.frame(height: heightItem)
                HStack(spacing: Padding.noPadding) {
                    Text("SwiftUI Tutorials")
                        .frame(width: screenSize.width / 3)
                }.frame(height: heightItem)
            }
        }
        .frame(width: screenSize.width)
        .background(Color.white)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ListArticleView()
    }
}

//
//  ArticleCellView.swift
//  DemoSwiftUI
//
//  Created by DucManh on 26/03/2021.
//

import SwiftUI

enum ArticleCellType {
    case edit
    case delete
}

struct ArticleCellView: View {
    private let screenSize = UIScreen.main.bounds
    @Binding var article: Article
    var completion: ((ArticleCellType) -> Void)?
    @State private var isShowAlertDelete = false

    var body: some View {
        VStack(alignment: .leading, spacing: Padding.noPadding) {
            Group {
                VStack(alignment: .leading, spacing: Padding.noPadding) {
                    self.profileView()
                }
//                Text("đasadasdasdas")
//                Text("đasadasdasdas")
//                Text("đasadasdasdas")
//                Text("đasadasdasdas")
//                Text("đasadasdasdas")
            }.frame(maxWidth: .infinity, maxHeight: .infinity)
        }.alert(isPresented: self.$isShowAlertDelete) { () -> Alert in
            self.alertView
        }
        .padding(.vertical, 8)
        .background(Color.white)
    }

    private func profileView() -> some View {
        HStack(spacing: Padding.noPadding) {
            HStack(spacing: Padding.noPadding) {

            }.frame(width: screenSize.width * 0.7)
            VStack(alignment: .trailing, spacing: Padding.noPadding) {
                Text("15/03/2010").padding(.bottom, 8)
                HStack {
                    imageItemCell("un_star")
                    imageItemCell("un_star")
                    imageItemCell("trash")
                        .onTapGesture {
                            isShowAlertDelete = true
                        }
                    imageItemCell(!$article.isFavorite.wrappedValue ? "un_star" : "star")
                        .onTapGesture {
                            $article.isFavorite.wrappedValue = !$article.isFavorite.wrappedValue
                        }
                }
            }.frame(width: screenSize.width * 0.3)
        }
    }

    /// show Alert View
    private var alertView: Alert {
        Alert(title: Text("Delete Article"),
              message: nil,
              primaryButton: .cancel(Text("OK"), action: {
                self.completion?(.delete)
              }), secondaryButton: .default(Text("Cancel")))
    }

    private func imageItemCell(_ image: String) -> some View {
        Image(image).resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 20, height: 20)
    }
}

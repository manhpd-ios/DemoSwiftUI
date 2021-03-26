//
//  ContentView.swift
//  DemoSwiftUI
//
//  Created by DucManh on 12/03/2021.
//

import SwiftUI

struct ArticleListVC: View {
    var body: some View {
        NavigationView {
            VStack(alignment: .leading, spacing: 0) {

            }
            .navigationBarTitle("Group demo", displayMode: .inline)
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading: leadingNavigationBarItem,
                                trailing: trailingNavigationBarItem)
        }
    }

    /// The navigation bar item
    private var trailingNavigationBarItem: some View {
        HStack {
            Button(action: {

            }) {
                Image("icon_arrow_down")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 25)
            }
            .padding(8)
            .buttonStyle(PlainButtonStyle())
            Button(action: {
                
            }) {
                Image("icon_arrow_down")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 25)
            }.buttonStyle(PlainButtonStyle())
        }
    }

    /// The navigation bar item
    private var leadingNavigationBarItem: some View {
        Button(action: {

        }) {
            Image("ic_back")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 30, height: 25)
                .offset(x: -10)
        }.buttonStyle(PlainButtonStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

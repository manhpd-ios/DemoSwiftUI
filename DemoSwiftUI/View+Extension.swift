//
//  View+Extension.swift
//  DemoSwiftUI
//
//  Created by DucManh on 15/03/2021.
//

import Foundation
import SwiftUI

extension View {
    func imageBarItem(_ image: String) -> some View {
        Image(image)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 30, height: 25)
    }
}

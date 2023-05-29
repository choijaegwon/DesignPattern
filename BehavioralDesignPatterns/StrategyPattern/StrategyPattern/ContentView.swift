//
//  ContentView.swift
//  StrategyPattern
//
//  Created by Jae kwon Choi on 2023/05/29.
//

import SwiftUI

fileprivate struct _RouteButton: View {
    let text: String
    let route: RouteStrategy
    @EnvironmentObject var navigation: KakaoMapNavigation

    private enum Constants {
        /// 사각형의 반지름
        static let cornerRadius: CGFloat = 5.0
        /// 사각형의 넓이
        static let roundedRectangleWidth: CGFloat = 100
        /// 사각형의 높이
        static let roundedRectangleHeight: CGFloat = 50
    }

    var body: some View {
        Button {
            self.navigation.setStrategy(self.route)
        } label: {
            RoundedRectangle(cornerRadius: Constants.cornerRadius)
                .fill(Color.black)
                .frame(width: Constants.roundedRectangleWidth, height: Constants.roundedRectangleHeight)
                .overlay {
                    Text(self.text)
                        .foregroundColor(Color.white)
                }
        }
    }
}

struct ContentView: View {

    @StateObject var navigation = KakaoMapNavigation()

    var body: some View {
        HStack(spacing: 15) {
            ForEach(navigation.model) { model in
                _RouteButton(text: model.text, route: model.route)
            }
        }
        .environmentObject(self.navigation)
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

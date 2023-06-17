//
//  ContentView.swift
//  DecoratorPattern
//
//  Created by Jae kwon Choi on 2023/06/17.
//

import SwiftUI

struct ContentView: View {
    @StateObject var notifier = Notifier()
    @Binding var emailNotifier = EmailDecorator(notifier: notifier)
    @Binding var slackNotifier = SlackDecorator(notifier: emailNotifier)
    
    var body: some View {
        VStack {
            Button {
                notifier.notify(message: "Hello")
            } label: {
                RoundedRectangle(cornerRadius: 5)
                    .fill(Color.black)
                    .frame(maxWidth: .infinity)
                    .frame(height: 50)
                    .overlay {
                        Text("Notifier")
                            .foregroundColor(Color.white)
                    }
            }
            Button {
                self.emailNotifier.notify(message: "Hello")
            } label: {
                RoundedRectangle(cornerRadius: 5)
                    .fill(Color.black)
                    .frame(maxWidth: .infinity)
                    .frame(height: 50)
                    .overlay {
                        Text("EmailNotifier")
                            .foregroundColor(Color.white)
                    }
            }
            Button {
                self.slackNotifier.notify(message: "Hello")
            } label: {
                RoundedRectangle(cornerRadius: 5)
                    .fill(Color.black)
                    .frame(maxWidth: .infinity)
                    .frame(height: 50)
                    .overlay {
                        Text("SlackNotifier")
                            .foregroundColor(Color.white)
                    }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

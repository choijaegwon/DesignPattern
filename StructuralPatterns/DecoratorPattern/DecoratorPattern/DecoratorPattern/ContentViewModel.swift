//
//  ContentViewModel.swift
//  DecoratorPattern
//
//  Created by Jae kwon Choi on 2023/06/17.
//

import Foundation
import SwiftUI

class ContentViewModel: ObservableObject {
    
    var notifier: Notifier?
    var emailNotifier: EmailDecorator?
    var slackNotifier: SlackDecorator?
    
    init() {
        @StateObject var notifier = Notifier()
        @StateObject var emailNotifier = EmailDecorator(notifier: notifier)
        @StateObject var slackNotifier = SlackDecorator(notifier: emailNotifier)
    }
}

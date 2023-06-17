//
//  main.swift
//  DecoratorPattern
//
//  Created by Jae kwon Choi on 2023/06/17.
//

import Foundation

let notifier = Notifier()
let emailNotifier = EmailDecorator(notifier: notifier)
let slackNotifier = SlackDecorator(notifier: emailNotifier)
slackNotifier.notify(message: "Hello")

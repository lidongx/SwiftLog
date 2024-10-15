//
//  Emoji.swift
//  Log
//
//  Created by lidong on 2024/10/15.
//  Copyright © 2024 lidong. All rights reserved.
//

import Foundation

open class Emoji {
    var items: [Level: String]

    public init(
        trace: String,
        debug: String,
        info: String,
        warning: String,
        error: String,
        firebase:String
    ) {
        items = [
            .trace: trace,
            .debug: debug,
            .info: info,
            .warning: warning,
            .error: error,
            .firebase: firebase
        ]
    }
}

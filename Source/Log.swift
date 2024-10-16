//
//  Log.swift
//  Log
//
//  Created by lidong on 2024/10/15.
//  Copyright © 2024 lidong. All rights reserved.
//

import Foundation

public class Log {
    private static var shared = Logger()
    public static var enabled: Bool = true {
        didSet {
            shared.enabled = enabled
        }
    }
    
    public static var enableAsset: Bool = true {
        didSet {
            shared.enableAsset = enableAsset
        }
    }
    
    public static var minLevel: Level = .info {
        didSet {
            shared.minLevel = minLevel
        }
    }
    
    public static var theme: Theme? = nil {
        didSet {
            shared.theme = theme
        }
    }

    public static func trace(
        _ items: Any...,
        separator: String = " ",
        terminator: String = "\n",
        file: String = #file,
        line: Int = #line,
        column: Int = #column,
        function: String = #function
    ) {
        shared.trace(items, separator, terminator, file, line, column, function)
    }

    public static func debug(
        _ items: Any...,
        separator: String = " ",
        terminator: String = "\n",
        file: String = #file,
        line: Int = #line,
        column: Int = #column,
        function: String = #function
    ) {
        shared.debug(
            items,
            separator,
            terminator,
            file,
            line,
            column,
            function
        )
    }

    public static func info(
        _ items: Any...,
        separator: String = " ",
        terminator: String = "\n",
        file: String = #file,
        line: Int = #line,
        column: Int = #column,
        function: String = #function
    ) {
        shared.info(
            items,
            separator,
            terminator,
            file,
            line,
            column,
            function
        )
    }
    
    public static func warning(
        _ items: Any...,
        separator: String = " ",
        terminator: String = "\n",
        file: String = #file,
        line: Int = #line,
        column: Int = #column,
        function: String = #function
    ) {
        shared.warning(
            items,
            separator,
            terminator,
            file,
            line,
            column,
            function
        )
    }
    
    public static func firebase(
        _ items: Any...,
        separator: String = " ",
        terminator: String = "\n",
        file: String = #file,
        line: Int = #line,
        column: Int = #column,
        function: String = #function
    ) {
        shared.firebase(
            items,
            separator,
            terminator,
            file,
            line,
            column,
            function
        )
    }
    
    public static func error(
        _ items: Any...,
        separator: String = " ",
        terminator: String = "\n",
        file: String = #file,
        line: Int = #line,
        column: Int = #column,
        function: String = #function
    ) {
        shared.error(
            items,
            separator,
            terminator,
            file,
            line,
            column,
            function
        )
    }
}

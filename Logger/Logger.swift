//
//  Logger.swift
//  Logger
//
//  Created by Arkadiusz Pituła on 28.05.2018.
//  Copyright © 2018 Arkadiusz Pituła. All rights reserved.
//

import Foundation

final public class Logger {

    public class func logError(file: String = #file, function: String = #function, line: Int = #line, context: Any? = nil) {
        print("❌ Error during execute:")
        log(file: file, function: function, line: line, context: context)
    }

    public class func logWarning(file: String = #file, function: String = #function, line: Int = #line, context: Any? = nil) {
        print("⚠️ Warning during execute:")
        log(file: file, function: function, line: line, context: context)
    }

    public class func logSuccess(file: String = #file, function: String = #function, line: Int = #line, context: Any? = nil) {
        print("✅ Success:")
        log(file: file, function: function, line: line, context: context)
    }

    private class func log(file: String = #file, function: String = #function, line: Int = #line, context: Any? = nil) {
        let fileName = file.components(separatedBy: "/").last ?? "Could not detect file"

        print("\tFile: \(fileName)")
        print("\tFunction: \(function)")
        print("\tLine: \(line)")
        if let context = context {
            print("\tAdditinal Info: \(context)")
        }
    }
}

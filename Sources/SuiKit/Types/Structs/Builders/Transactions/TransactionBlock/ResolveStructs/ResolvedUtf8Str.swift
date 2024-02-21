//
//  ResolvedUtf8Str.swift
//  SuiKit
//
//  Copyright (c) 2024 OpenDive
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//

import Foundation

public struct ResolvedUtf8Str: ResolvedProtocol {
    /// Represents the address associated with the Move standard library.
    /// It is initialized with a default value from `ResolvedConstants`.
    public var address: String = ResolvedConstants.moveStdlibAddress

    /// Represents the module name where the `String` struct is declared in UTF-8 in the standard library.
    /// It is initialized with a default value from `ResolvedConstants`.
    public var module: String = ResolvedConstants.stdUtf8ModuleName

    /// Represents the name for the UTF-8 `String` struct in the standard library.
    /// It is initialized with a default value from `ResolvedConstants`.
    public var name: String = ResolvedConstants.stdUtf8StructName

    /// Initializes a new instance of `ResolvedUtf8Str`.
    /// As all properties are initialized with default values,
    /// no parameters are needed and rarely this initializer will be used.
    public init() {}
}

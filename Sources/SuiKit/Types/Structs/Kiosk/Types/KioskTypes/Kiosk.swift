//
//  Kiosk.swift
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

/**
 * The Kiosk object fields (for BCS queries).
 */
public struct Kiosk: KeyProtocol {
    public let id: AccountAddress
    public let profits: UInt64
    public let owner: AccountAddress
    public let itemCount: UInt32
    public let allowExtension: Bool

    public init(
        id: AccountAddress,
        profits: UInt64,
        owner: AccountAddress,
        itemCount: UInt32,
        allowExtension: Bool
    ) {
        self.id = id
        self.profits = profits
        self.owner = owner
        self.itemCount = itemCount
        self.allowExtension = allowExtension
    }

    public func serialize(_ serializer: Serializer) throws {
        try Serializer._struct(serializer, value: self.id)
        try Serializer.u64(serializer, self.profits)
        try Serializer._struct(serializer, value: self.owner)
        try Serializer.u32(serializer, self.itemCount)
        try Serializer.bool(serializer, self.allowExtension)
    }

    public static func deserialize(from deserializer: Deserializer) throws -> Kiosk {
        return Kiosk(
            id: try AccountAddress.deserialize(from: deserializer),
            profits: try Deserializer.u64(deserializer),
            owner: try AccountAddress.deserialize(from: deserializer),
            itemCount: try Deserializer.u32(deserializer),
            allowExtension: try deserializer.bool()
        )
    }
}

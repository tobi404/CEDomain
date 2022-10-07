//
//  CEError.swift
//  CurrencyExchange
//
//  Created by Beka Demuradze on 04.10.22.
//

import Foundation

public struct CEError: Error {
    public let errorCode: Int = 0
    public let userMessage: String
    public let debugMessage: String

    public init(userMessage: String, debugMessage: String) {
        self.userMessage = userMessage
        self.debugMessage = debugMessage
    }
}

//
//  CurrencyEntity.swift
//  CurrencyExchange
//
//  Created by Beka Demuradze on 04.10.22.
//

import Foundation

public protocol Currency: Hashable {
    var name: String { get }
    var symbol: String { get }
}

public struct CurrencyEntity: Currency {
    public let name: String
    public let symbol: String

    public init(name: String, symbol: String) {
        self.name = name
        self.symbol = symbol
    }
}

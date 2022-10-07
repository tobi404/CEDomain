//
//  CurrencyExchangeResultEntity.swift
//  CurrencyExchange
//
//  Created by Beka Demuradze on 05.10.22.
//

import Foundation

public struct CurrencyExchangeResultEntity: Codable {
    public let amount: Decimal
    public let currency: String

    public init(amount: String, currency: String) {
        self.amount = Decimal(string: amount) ?? 0.0
        self.currency = currency
    }
}

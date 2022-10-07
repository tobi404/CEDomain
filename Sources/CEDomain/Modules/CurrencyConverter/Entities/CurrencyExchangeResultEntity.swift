//
//  CurrencyExchangeResultEntity.swift
//  CurrencyExchange
//
//  Created by Beka Demuradze on 05.10.22.
//

import Foundation

struct CurrencyExchangeResultEntity: Codable {
    let amount: Decimal
    let currency: String

    init(amount: String, currency: String) {
        self.amount = Decimal(string: amount) ?? 0.0
        self.currency = currency
    }
}

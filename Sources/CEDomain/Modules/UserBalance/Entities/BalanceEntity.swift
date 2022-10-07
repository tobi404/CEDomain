//
//  BalanceEntity.swift
//  CurrencyExchange
//
//  Created by Beka Demuradze on 04.10.22.
//

import Foundation

final class BalanceEntity {

    // MARK: - Private Set Properties
    private(set) var amount: Decimal
    private(set) var currency: any Currency

    // MARK: - Lifecycle
    init (amount: Decimal, currency: any Currency) {
        self.amount = amount
        self.currency = currency
    }

    // MARK: - Methods
    func updateAmount(_ amount: Decimal) {
        self.amount = amount
    }
}

extension BalanceEntity: Hashable {
    static func == (lhs: BalanceEntity, rhs: BalanceEntity) -> Bool {
        lhs.amount == rhs.amount
    }

    func hash(into hasher: inout Hasher) {
        hasher.combine(amount)
        hasher.combine(currency.name)
        hasher.combine(currency.symbol)
    }
}

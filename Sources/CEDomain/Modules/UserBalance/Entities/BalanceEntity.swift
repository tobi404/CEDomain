//
//  BalanceEntity.swift
//  CurrencyExchange
//
//  Created by Beka Demuradze on 04.10.22.
//

import Foundation

public final class BalanceEntity {

    // MARK: - Private Set Properties
    public var amount: Decimal
    public var currency: any Currency

    // MARK: - Lifecycle
    public init (amount: Decimal, currency: any Currency) {
        self.amount = amount
        self.currency = currency
    }

    // MARK: - Methods
    public func updateAmount(_ amount: Decimal) {
        self.amount = amount
    }
}

extension BalanceEntity: Hashable {
    public static func == (lhs: BalanceEntity, rhs: BalanceEntity) -> Bool {
        lhs.amount == rhs.amount
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(amount)
        hasher.combine(currency.name)
        hasher.combine(currency.symbol)
    }
}

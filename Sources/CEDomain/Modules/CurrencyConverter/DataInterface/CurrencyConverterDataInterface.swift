//
//  CurrencyConverterDataInterface.swift
//  CurrencyExchange
//
//  Created by Beka Demuradze on 05.10.22.
//

import Foundation

public protocol CurrencyConverterDataInterface {
    func getExchangedValue(amount: String, fromCurrency: CurrencyEntity, toCurrency: CurrencyEntity) async throws -> CurrencyExchangeResultEntity
    func getAvailableCurrencies() async throws -> [CurrencyEntity]
}

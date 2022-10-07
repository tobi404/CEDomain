//
//  CurrencyConverterUseCase.swift
//  CurrencyExchange
//
//  Created by Beka Demuradze on 05.10.22.
//

import Factory
import Foundation

public protocol CurrencyConverterUseCaseInterface {
    func getExchangedValue(amount: String, fromCurrency: CurrencyEntity, toCurrency: CurrencyEntity) async throws -> CurrencyExchangeResultEntity
    func getAvailableCurrencies() async throws -> [CurrencyEntity]
}

public final class CurrencyConverterUseCase: CurrencyConverterUseCaseInterface {

    // MARK: - Private Properties
    @Injected(Dependencies.core.currencyConverterDataRepository)
    private var dataRepo: CurrencyConverterDataInterface

    // MARK: - Exposed Methods
    public func getExchangedValue(amount: String, fromCurrency: CurrencyEntity, toCurrency: CurrencyEntity) async throws -> CurrencyExchangeResultEntity {
        try await dataRepo.getExchangedValue(amount: amount, fromCurrency: fromCurrency, toCurrency: toCurrency)
    }

    public func getAvailableCurrencies() async throws -> [CurrencyEntity] {
        try await dataRepo.getAvailableCurrencies()
    }

}

public extension Container {
    static let currencyConverterUseCase = Factory { CurrencyConverterUseCase() as CurrencyConverterUseCaseInterface }
}

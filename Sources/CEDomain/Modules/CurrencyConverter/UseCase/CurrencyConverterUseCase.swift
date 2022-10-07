//
//  CurrencyConverterUseCase.swift
//  CurrencyExchange
//
//  Created by Beka Demuradze on 05.10.22.
//

import Factory
import Foundation

protocol CurrencyConverterUseCaseInterface {
    func getExchangedValue(amount: String, fromCurrency: CurrencyEntity, toCurrency: CurrencyEntity) async throws -> CurrencyExchangeResultEntity
    func getAvailableCurrencies() async throws -> [CurrencyEntity]
}

final class CurrencyConverterUseCase: CurrencyConverterUseCaseInterface {

    // MARK: - Private Properties
    @Injected(Container.currencyConverterDataRepository)
    private var dataRepo: CurrencyConverterDataInterface

    // MARK: - Exposed Methods
    func getExchangedValue(amount: String, fromCurrency: CurrencyEntity, toCurrency: CurrencyEntity) async throws -> CurrencyExchangeResultEntity {
        try await dataRepo.getExchangedValue(amount: amount, fromCurrency: fromCurrency, toCurrency: toCurrency)
    }

    func getAvailableCurrencies() async throws -> [CurrencyEntity] {
        try await dataRepo.getAvailableCurrencies()
    }

}

extension Container {
    static let currencyConverterUseCase = Factory { CurrencyConverterUseCase() as CurrencyConverterUseCaseInterface }
}

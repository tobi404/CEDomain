//
//  UserBalanceUseCase.swift
//  CurrencyExchange
//
//  Created by Beka Demuradze on 04.10.22.
//

import Factory
import Foundation

// MARK: - UseCase Interface
protocol UserBalanceUseCaseInterface {
    func getBalances() async throws -> [BalanceEntity]
}

// MARK: - UseCase
final class UserBalanceUseCase: UserBalanceUseCaseInterface {

    // MARK: - Private Properties
    @Injected(Container.userBalanceDataRepository)
    private var dataRepo: UserBalanceDataInterface

    // MARK: - Methods
    func getBalances() async throws -> [BalanceEntity] {
        try await dataRepo.getUserBalances()
    }
}

// MARK: - Factory
extension Container {
    static let userBalanceUseCase = Factory { UserBalanceUseCase() as UserBalanceUseCaseInterface }
}

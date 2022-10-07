//
//  UserBalanceUseCase.swift
//  CurrencyExchange
//
//  Created by Beka Demuradze on 04.10.22.
//

import Factory
import Foundation

// MARK: - UseCase Interface
public protocol UserBalanceUseCaseInterface {
    func getBalances() async throws -> [BalanceEntity]
}

// MARK: - UseCase
public final class UserBalanceUseCase: UserBalanceUseCaseInterface {

    // MARK: - Private Properties
    @Injected(Dependencies.core.userBalanceDataRepository)
    private var dataRepo: UserBalanceDataInterface

    // MARK: - Methods
    public func getBalances() async throws -> [BalanceEntity] {
        try await dataRepo.getUserBalances()
    }
}

// MARK: - Factory
public extension Container {
    static let userBalanceUseCase = Factory { UserBalanceUseCase() as UserBalanceUseCaseInterface }
}

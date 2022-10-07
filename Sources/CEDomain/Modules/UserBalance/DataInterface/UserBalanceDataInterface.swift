//
//  UserBalanceDataInterface.swift
//  CurrencyExchange
//
//  Created by Beka Demuradze on 04.10.22.
//

import Foundation

public protocol UserBalanceDataInterface {
    func getUserBalances() async throws -> [BalanceEntity]
}
